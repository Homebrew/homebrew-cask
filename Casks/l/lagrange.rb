cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "2.0.3"
  sha256 arm:   "dd75e13b8977b9559f32ec460abc4b6b2598d71274517229bd1e6d0ccb1d82ca",
         intel: "15e9c515de6922eeaf1bfceff0b2eb72fa9912d633bfd410bde426a4aff6be6c"

  url "https://git.skyjake.fi/gemini/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  livecheck do
    url "https://etc.skyjake.fi/lagrange/appcast-#{livecheck_arch}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end

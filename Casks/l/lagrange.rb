cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.19.0"
  sha256 arm:   "1b2a76ee7f982ad29093a6d8b06bbb0c0c7ffb7f62aa15aab09895ec7389ae44",
         intel: "98906e1d4516efaad96084d6fa3a296183c0b61d3e3bf2f28b5f52e3b6d23987"

  url "https://git.skyjake.fi/gemini/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  livecheck do
    url "https://etc.skyjake.fi/lagrange/appcast-#{livecheck_arch}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end

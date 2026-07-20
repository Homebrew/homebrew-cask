cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.20.9"
  sha256 arm:   "5076e7bfe0270507b54b3d27ccffd8bcc6b16d7f3cab49b5da8003744498825c",
         intel: "8182a98cd3ef6c01e2f83f250952980a90930e023437ee0945b131420a5dbca0"

  url "https://git.skyjake.fi/gemini/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  livecheck do
    url "https://etc.skyjake.fi/lagrange/appcast-#{livecheck_arch}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end

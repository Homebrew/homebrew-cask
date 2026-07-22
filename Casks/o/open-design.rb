cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "c91495a6e6732bafcdafb82f84f9bd0282d336b0b8cc81ee6cc46038a26eb5e5",
         intel: "2f2a3ff656742ee04b0a9cc7189190a03707877722ee8903c7ec27f25080e94e"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg",
      verified: "github.com/nexu-io/open-design/"
  name "Open Design"
  desc "Local-first, agent-native design tool"
  homepage "https://open-design.ai/"

  livecheck do
    url :url
    regex(/open-design[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Open Design.app"

  zap trash: [
    "~/Library/Application Support/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
  ]
end

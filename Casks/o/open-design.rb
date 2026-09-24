cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "1737bf108f6668cafff095ceaa9ca7cff3fa24cc8c697ef4b868802ee136ade7",
         intel: "ea35f91f3260755f76c9be1a294da22701c5f2c2bd5a81ae76a9136c59994ba6"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg"
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

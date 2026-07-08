cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "91b98ec924360d6ecf4e8423ec351f3ff6902dc25298680f161c53de74ec0bf4",
         intel: "6119a3b516a432dcb766f6d5e1374617659fe0ea6e8b983749850deabbe3d491"

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

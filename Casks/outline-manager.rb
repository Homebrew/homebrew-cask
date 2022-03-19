cask "outline-manager" do
  version "1.9.0"
  sha256 "8a1e97f1fcebacd4cbaae8a9278aa652a13f6f4d43546709e74e0df96b3ae149"

  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg",
      verified: "github.com/Jigsaw-Code/outline-server/"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  livecheck do
    url "https://raw.githubusercontent.com/Jigsaw-Code/outline-releases/master/manager/latest-mac.yml"
    strategy :electron_builder
  end

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
  ]
end

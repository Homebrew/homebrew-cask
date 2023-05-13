cask "outline-manager" do
  version "1.14.0"
  sha256 "148e8359c7351c072e63f613d21899485568b7dcc397fd7a80d9fc10d570baee"

  url "https://github.com/Jigsaw-Code/outline-server/releases/download/manager-v#{version}/Outline-Manager.dmg",
      verified: "github.com/Jigsaw-Code/outline-server/"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  livecheck do
    url :stable
    regex(/(?:manager[._-])?v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
  ]
end

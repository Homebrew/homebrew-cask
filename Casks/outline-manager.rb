cask "outline-manager" do
  version "1.6.1"
  sha256 "329db2c8c64c5b8700f0ade335d69c68020dd5ab0ff788a68c90771b1dc6905a"

  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg",
      verified: "github.com/Jigsaw-Code/outline-server/"
  appcast "https://github.com/Jigsaw-Code/outline-server/releases.atom"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
  ]
end

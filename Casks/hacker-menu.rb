cask "hacker-menu" do
  version "1.1.5"
  sha256 "ab7de53e74b4514f46726f6dc3be467a1dd7f320990656b60cbb7ea4dd74bacf"

  url "https://github.com/jingweno/hacker-menu/releases/download/v#{version}/hacker-menu-mac.zip",
      verified: "github.com/jingweno/hacker-menu/"
  appcast "https://github.com/jingweno/hacker-menu/releases.atom"
  name "Hacker Menu"
  desc "Hacker News Delivered to Desktop :dancers:"
  homepage "https://hackermenu.io/"

  app "Hacker Menu.app"

  zap trash: [
    "~/Library/Application Support/Hacker Menu",
    "~/Library/Application Support/com.electron.hacker_menu.ShipIt",
    "~/Library/Caches/Hacker Menu",
    "~/Library/Caches/com.electron.hacker_menu",
    "~/Library/Preferences/com.electron.hacker_menu.plist",
    "~/Library/Saved Application State/com.electron.hacker_menu.savedState",
  ]
end

cask "hacker-menu" do
  version "1.1.5"
  sha256 "ab7de53e74b4514f46726f6dc3be467a1dd7f320990656b60cbb7ea4dd74bacf"

  url "https://github.com/owenthereal/hacker-menu/releases/download/v#{version}/hacker-menu-mac.zip"
  name "Hacker Menu"
  desc "Hacker News Delivered to Desktop"
  homepage "https://github.com/owenthereal/hacker-menu"

  deprecate! date: "2024-06-12", because: :unmaintained

  app "Hacker Menu.app"

  zap trash: [
    "~/Library/Application Support/com.electron.hacker_menu.ShipIt",
    "~/Library/Application Support/Hacker Menu",
    "~/Library/Caches/com.electron.hacker_menu",
    "~/Library/Caches/Hacker Menu",
    "~/Library/Preferences/com.electron.hacker_menu.plist",
    "~/Library/Saved Application State/com.electron.hacker_menu.savedState",
  ]
end

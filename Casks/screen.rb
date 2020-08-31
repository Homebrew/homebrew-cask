cask "screen" do
  version "3.0.3"
  sha256 "cb06efa3a70461d42cd45e1b27fca75a927d4bb539bdaa321d893e018b81ace4"

  url "https://download.screen.so/desktop-app/darwin/#{version}/Screen.dmg"
  appcast "https://download.screen.so/"
  name "Screen"
  homepage "https://screen.so/"

  auto_updates true

  app "Screen.app"

  zap trash: [
    "~/Library/Application Support/Screen",
    "~/Library/Preferences/so.screen.screen.app.plist",
  ]
end

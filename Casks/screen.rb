cask "screen" do
  version "3.0.1"
  sha256 "7a3de7f3562cdbc07d5c43e80b380de00233e1dcd2693d408da5bf8bd9f0992e"

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

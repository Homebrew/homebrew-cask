cask "screen" do
  version "3.1.4"
  sha256 "bfb1dc4d2419a10c815bbbd7f9320d7626c713a76bcf257202e687bc9ae283b4"

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

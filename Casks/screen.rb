cask "screen" do
  version "4.0.2"
  sha256 "977d3edc0e672108a4f2aa23a736879429c6ac0bae61f114e500bc8716e0c212"

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

cask "screen" do
  version "3.0.2"
  sha256 "cd506c9e724d11f8d0de6e669186f67dd50b92017f939dc8c71100db5f63a6d2"

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

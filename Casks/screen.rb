cask "screen" do
  version "3.1.6"
  sha256 "a2d2299884a7ffcc659567177fc1df08bb9609b10f885669c2b87dc1f58041db"

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

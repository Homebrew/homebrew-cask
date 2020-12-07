cask "screen" do
  version "4.0.1"
  sha256 "5ad408b8fcf0c249ea6528268cff0473f4ceb4a43e7ffe0e7930be47eefd9aa1"

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

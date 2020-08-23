cask "screen" do
  version "3.0.0"
  sha256 "3882b3f9858db431b66b12f8ef126149aed2221afe103cd0a922f313b6bc6bd6"

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

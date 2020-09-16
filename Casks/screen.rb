cask "screen" do
  version "3.1.0"
  sha256 "b7c246034c49356af31ea5311fd633a16c40220c5400ab3ab53cbc9956d7debe"

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

cask "screen" do
  version "3.1.5"
  sha256 "008d741dac47bb8d3fa12284bee5944c09b63d3807b65eae28dd54e7897f8dd7"

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

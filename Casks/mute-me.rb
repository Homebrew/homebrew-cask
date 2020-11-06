cask "mute-me" do
  version "1.2.0"
  sha256 "ac5731d090dc3e49974be079e48dbfefcdefc203d7b1319b1bdffe96fe768325"

  url "https://github.com/pixel-point/mute-me/releases/download/v#{version}/mute-me-v#{version}.zip"
  appcast "https://github.com/Lorenzo45/AutoMute/releases.atom"
  name "mute-me"
  desc "Use the Touch Bar app to Mute/Unmute your microphone, or just use the shortcut"
  homepage "https://github.com/pixel-point/mute-me"

  app "Mute Me.app"
end

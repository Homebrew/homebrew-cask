cask "aural" do
  version "3.5.2"
  sha256 "3b6f112d7ab089d107e62b3047064c37385a21a8908cc1271c34a9ef00af8aef"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

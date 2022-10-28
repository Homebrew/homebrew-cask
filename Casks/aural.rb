cask "aural" do
  version "3.12.0"
  sha256 "5e79afebccb1989f74cb4d9853cb9568b6abf0e6f182291a26c32d63f97a432a"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

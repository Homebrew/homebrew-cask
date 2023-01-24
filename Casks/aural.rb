cask "aural" do
  version "3.14.0"
  sha256 "6d262398d63419e900b03f2d75f2490cd40593eb828bf160d901d78cc3623f41"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

cask "aural" do
  version "3.20.0"
  sha256 "8d6d7909cae7ec975dfb8f7dc02928c016b4e7322b3fe23cfea42f32147ace06"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

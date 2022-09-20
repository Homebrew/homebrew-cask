cask "aural" do
  version "3.6.0"
  sha256 "09c1c050c81107f594aa60c21c95ad0171d20a65888519f0b4e6289524844ecb"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

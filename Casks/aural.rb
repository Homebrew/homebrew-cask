cask "aural" do
  version "3.11.0"
  sha256 "3e6464b3cb7e644ae2df2200b16f23ef99e6ca5ef0371436dbb7a1c321a67814"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

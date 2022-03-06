cask "aural" do
  version "3.5.3"
  sha256 "84d6270eff44e98f9c3b861c7f87ee6f131cb9493185c9807761c75543e2c73b"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

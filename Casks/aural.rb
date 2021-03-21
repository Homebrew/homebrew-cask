cask "aural" do
  version "2.7.0"
  sha256 "1ecd832d6cc75c96d207bc1a137f42d7c1e1b3da59a6e9849d26665384006077"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

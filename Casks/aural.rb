cask "aural" do
  version "2.8.0"
  sha256 "15e0e697d02cf49c13d843752a9bbdfac7f4433c5a60047818cbd14c0a6d08bb"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

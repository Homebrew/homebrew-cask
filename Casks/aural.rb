cask "aural" do
  version "3.5.6"
  sha256 "9214c40b8347ec6b0eaf6b50a1ee7479d5a5f6be51191c24fb8a199da416845e"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

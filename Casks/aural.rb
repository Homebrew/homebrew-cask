cask "aural" do
  version "2.12.0"
  sha256 "11934b75cde7d5e36458580f4d7e011b4500f5dfc1039a92c4ed897590f7cb8a"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

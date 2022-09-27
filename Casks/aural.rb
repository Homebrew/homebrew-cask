cask "aural" do
  version "3.9.0"
  sha256 "0d8211c1c128512fae6fc4136880c630c9d50394f9b650869a9a9efb54ce0390"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

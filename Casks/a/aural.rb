cask "aural" do
  version "3.25.0"
  sha256 "e306803777b7735e3966a10ff2b90cda562c56aa6508cfcad3e7752a007eb845"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  depends_on macos: ">= :high_sierra"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

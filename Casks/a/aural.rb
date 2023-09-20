cask "aural" do
  version "3.21.1"
  sha256 "59837c6217a2afa3bf7f19be65d9a41b7957ed5f691ab372e1c0024641bc791a"

  url "https://github.com/maculateConception/aural-player/releases/download/v#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

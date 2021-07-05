cask "aural" do
  version "3.2.0"
  sha256 "b60698755eea8367ed3e81296fe08020c146fba6f8e5d9d255faf3c3315f4707"

  url "https://github.com/maculateConception/aural-player/releases/download/#{version}/AuralPlayer-#{version}.dmg"
  name "Aural Player"
  desc "Audio player inspired by Winamp"
  homepage "https://github.com/maculateConception/aural-player"

  app "Aural.app"

  zap trash: "~/Library/Preferences/anon.Aural.plist"
end

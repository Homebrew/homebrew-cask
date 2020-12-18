cask "soundcleod" do
  version "2.0.0"
  sha256 "7554112b63f7b7b217481ef94ee00903cdb2bf6d25c80228140f1afc5ff0d285"

  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg",
      verified: "github.com/salomvary/soundcleod/"
  appcast "https://github.com/salomvary/soundcleod/releases.atom"
  name "SoundCleod"
  homepage "https://soundcleod.com/"

  app "SoundCleod.app"
end

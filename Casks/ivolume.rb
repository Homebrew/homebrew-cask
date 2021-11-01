cask "ivolume" do
  version "3.9.0,2260"
  sha256 :no_check

  url "https://www.mani.de/download/ivolume/iVolume3Mac.dmg"
  name "iVolume"
  desc "App to ensures that all songs are played at the same volume level"
  homepage "https://www.mani.de/en/ivolume/"

  app "iVolume.app"
end

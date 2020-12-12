cask "roon" do
  version :latest
  sha256 :no_check

  url "https://download.roonlabs.com/builds/Roon.dmg"
  name "Roon"
  desc "Music player"
  homepage "https://roonlabs.com/"

  app "Roon.app"
end

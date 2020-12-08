cask "sketchpacks" do
  version "0.6.2"
  sha256 :no_check

  # sketchpacks-releases.herokuapp.com/ was verified as official when first introduced to the cask
  url "https://sketchpacks-releases.herokuapp.com/download/osx"
  name "Sketchpacks"
  homepage "https://sketchpacks.com/"

  depends_on macos: ">= :yosemite"

  app "Sketchpacks.app"
end

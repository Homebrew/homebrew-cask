cask "sketchpacks" do
  version :latest
  sha256 :no_check

  url "https://sketchpacks-releases.herokuapp.com/download/osx",
      verified: "sketchpacks-releases.herokuapp.com/"
  name "Sketchpacks"
  homepage "https://sketchpacks.com/"

  app "Sketchpacks.app"
end

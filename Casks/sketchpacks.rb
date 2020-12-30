cask "sketchpacks" do
  version "0.6.2"
  sha256 :no_check

  url "https://sketchpacks-releases.herokuapp.com/download/osx",
      verified: "sketchpacks-releases.herokuapp.com/"
  name "Sketchpacks"
  homepage "https://sketchpacks.com/"

  depends_on macos: ">= :yosemite"

  app "Sketchpacks.app"
end

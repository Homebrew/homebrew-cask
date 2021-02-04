cask "free-ruler" do
  version "2.0.5"
  sha256 "6332b9252a4fc58dbf4a5f74b5484d6ae20c2f4cb7db7a2c86020454fa66444d"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  appcast "https://github.com/pascalpp/FreeRuler/releases.atom"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "http://www.pascal.com/software/freeruler/"

  app "Free Ruler.app"
end

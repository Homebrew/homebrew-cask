cask "free-ruler" do
  version "2.0.3"
  sha256 "aa428907c113e249a6baedb329e788b10d6db67d9f9117c3986780d2c592da9d"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  appcast "https://github.com/pascalpp/FreeRuler/releases.atom"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "http://www.pascal.com/software/freeruler/"

  app "Free Ruler.app"
end

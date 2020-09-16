cask "free-ruler" do
  version "2.0.3"
  sha256 "aa428907c113e249a6baedb329e788b10d6db67d9f9117c3986780d2c592da9d"

  # github.com/pascalpp/FreeRuler/ was verified as official when first introduced to the cask
  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip"
  appcast "https://github.com/pascalpp/FreeRuler/releases.atom"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "http://www.pascal.com/software/freeruler/"

  app "Free Ruler.app"
end

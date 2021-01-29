cask "free-ruler" do
  version "2.0.4"
  sha256 "b736d22bd730ef9e94c9579aa55a40bd264f491c245980a84b469eb156c7267c"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  appcast "https://github.com/pascalpp/FreeRuler/releases.atom"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "http://www.pascal.com/software/freeruler/"

  app "Free Ruler.app"
end

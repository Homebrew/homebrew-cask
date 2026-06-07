cask "free-ruler" do
  version "2.0.13"
  sha256 "eb12b95eeee08673bfa50b4a1b189b7cc63fe6b21b6bc933f8ddb3ab43fb7d6e"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  depends_on macos: :sonoma

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

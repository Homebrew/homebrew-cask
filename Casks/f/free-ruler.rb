cask "free-ruler" do
  version "2.0.15"
  sha256 "fc6f1b2dec77fc8d5b2830dbca5337549001e14bdb37261a1f8e35ede1e0ffc8"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  depends_on macos: :sonoma

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

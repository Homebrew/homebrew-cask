cask "free-ruler" do
  version "2.0.17"
  sha256 "58f6750e5057e3b1a9ce9da11a8a67a59750966aedc7a38bc9de8432d26bd600"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  depends_on macos: :sonoma

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

cask "free-ruler" do
  version "2.0.19"
  sha256 "b261c6bb152fdef376844e88c3e2b32938077ca7cdd1ccc9d9f60b97d3294e0d"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  depends_on macos: :sonoma

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

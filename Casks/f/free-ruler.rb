cask "free-ruler" do
  version "2.0.12"
  sha256 "19211245bfbc38de21d7c00dfa49bc5d94b9c0039933467df8169d57c4443929"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  depends_on macos: :sonoma

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

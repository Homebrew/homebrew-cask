cask "free-ruler" do
  version "2.0.16"
  sha256 "cdbc1403da308e1c31fd7d85601d070b1601f4372c6d302e657f5a859a00336f"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  depends_on macos: :sonoma

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

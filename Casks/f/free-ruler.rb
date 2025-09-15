cask "free-ruler" do
  version "2.0.8"
  sha256 "697482a35fb13cb6f58678b443a57951180ad1046141f0e98d0fc8d1f1d67da6"

  url "https://github.com/pascalpp/FreeRuler/releases/download/v#{version}/free-ruler-#{version}.zip",
      verified: "github.com/pascalpp/FreeRuler/"
  name "Free Ruler"
  desc "Horizontal and vertical rulers"
  homepage "https://www.pascal.com/freeruler"

  app "Free Ruler.app"

  zap trash: "~/Library/Containers/com.pascal.freeruler"
end

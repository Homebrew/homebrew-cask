cask "cycliqplus" do
  version "2.53"
  sha256 "76424d10b3e31640267c27a563c630431ad43e20e47b1baf5aebdd9dcb107f43"

  url "https://cycliq.com/files/software/CycliqPlus-#{version}.dmg"
  name "CycliqPlus"
  desc "Footage and bike camera settings editor"
  homepage "https://cycliq.com/"

  app "CycliqPlus.app"

  zap trash: [
    "~/Library/Caches/com.cycliq.mac",
    "~/Library//WebKit/com.cycliq.mac",
  ]
end

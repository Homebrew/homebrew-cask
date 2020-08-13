cask "exactscan" do
  version "20.1.6"
  sha256 "90327d282eaa5745477f0532a9608516262d45bd94999d03d51f669935e38d96"

  # dl.exactcode.com/ was verified as official when first introduced to the cask
  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg"
  appcast "https://exactscan.com/download.html"
  name "ExactScan"
  homepage "https://exactscan.com/index.html"

  app "ExactScan.app"
end

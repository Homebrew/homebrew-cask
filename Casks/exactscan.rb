cask "exactscan" do
  version "20.1.6"
  sha256 "90327d282eaa5745477f0532a9608516262d45bd94999d03d51f669935e38d96"

  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg",
      verified: "dl.exactcode.com/"
  name "ExactScan"
  homepage "https://exactscan.com/index.html"

  livecheck do
    url "https://exactscan.com/download.html"
    strategy :page_match
    regex(%r{href=.*?/ExactScan-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "ExactScan.app"
end

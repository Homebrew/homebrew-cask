cask "marginnote" do
  version "3.7.3,3.7.3002"
  sha256 "e59961ed327ad2145eebb13e6c2d0d09c2028d3a2ba22f7c30f48e4aa7984e45"

  url "https://marginstudy.com/mac/MarginNote#{version.major}.dmg",
      verified: "marginstudy.com/"
  name "MarginNote"
  desc "E-reader"
  homepage "https://www.marginnote.com/"

  livecheck do
    url "https://dist.marginnote.cn/marginnote#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end

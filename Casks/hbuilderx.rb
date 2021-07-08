cask "hbuilderx" do
  version "3.1.18.20210609"
  sha256 "c85921dfced7e45248da2a32a7f209667a3df307f97578e0e4983ebaa81ba70a"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
      verified: "download1.dcloud.net.cn/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    regex(/HBuilderX[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "HBuilderX.app"
end

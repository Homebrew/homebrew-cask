cask "marginnote" do
  version "3.7.16,3.7.16003"
  sha256 "052fc64fd10e39039bfc133a6e16da0b7b5c920c57775c129b1ec5705ea1dc83"

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
  depends_on macos: ">= :sierra"

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end

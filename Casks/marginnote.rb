cask "marginnote" do
  version "3.6.15"
  sha256 "39d93696555f95864807a9f40838f4ef3d617851f89578b5ebc4db57cee10749"

  # marginstudy.com/ was verified as official when first introduced to the cask
  url "https://marginstudy.com/mac/MarginNote#{version.major}.dmg"
  appcast "https://dist.marginnote.cn/marginnote#{version.major}.xml"
  name "MarginNote"
  desc "E-reader"
  homepage "https://www.marginnote.com/"

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/QReader.MarginStudyMac",
    "~/Library/Containers/QReader.MarginStudyMac",
  ]
end

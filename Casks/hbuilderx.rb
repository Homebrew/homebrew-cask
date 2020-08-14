cask "hbuilderx" do
  version "2.8.6.20200814"
  sha256 "505144387eaf7a955e9bd5bfb962432d820b79dc78cf015331ad69123fe7654f"

  # download1.dcloud.net.cn/ was verified as official when first introduced to the cask
  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg"
  appcast "https://dcloud.io/docs/HBuilder.json"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end

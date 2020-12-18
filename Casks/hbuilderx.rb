cask "hbuilderx" do
  version "2.9.8.20201119"
  sha256 "ba82f994fc33d36cd37fee0adcfadc6016938c27ec9aa41c2f894d0dfe240d28"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
      verified: "download1.dcloud.net.cn/"
  appcast "https://update.dcloud.net.cn/hbuilderx/changelog/#{version}.html"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end

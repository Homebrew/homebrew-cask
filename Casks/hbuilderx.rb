cask "hbuilderx" do
  version "3.1.4.20210305"
  sha256 "eb1ef0d331824e8d9021ecd38e607933d3806aa2505431d1d86d9c4cba797729"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
      verified: "download1.dcloud.net.cn/"
  appcast "https://update.dcloud.net.cn/hbuilderx/changelog/#{version}.html"
  name "HBuilderX"
  homepage "https://www.dcloud.io/hbuilderx.html"

  app "HBuilderX.app"
end

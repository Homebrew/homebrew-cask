cask "futubull@legacy" do
  version "15.17.11608"
  sha256 "373c3922aeea1ff736165e9f7c5b7d76ede560094d0be7f5f9f61eec3f055cb2"

  url "https://softwaredownload.futunn.com/FTNN_legacy_#{version}_Website.dmg",
      user_agent: :fake,
      referer:    "https://www.futunn.com/"
  name "Futubull Legacy For Mac"
  name "版富途牛牛 Mac 桌面经典版"
  desc "Futubull trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/api/futunn/download/fetch-lasted-link?clientType=11&isNext=0"
    regex(/FTNN_legacy[._-]v?(\d+(?:\.\d+)+)[._-]Website\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "FutuNiuniu.app"

  uninstall quit: "cn.futu.niuniu"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.niuniu.nx",
  ]
end

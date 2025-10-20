cask "futubull@legacy" do
  version "15.35.13408"
  sha256 "9df8524b2b4a000003937e0d467607a824c894b9c5987554cf57f7a106bb07ed"

  url "https://softwaredownload.futunn.com/FTNN_legacy_#{version}_Website.dmg",
      user_agent: :fake,
      referer:    "https://www.futunn.com/"
  name "Futubull Legacy For Mac"
  name "版富途牛牛 Mac 桌面经典版"
  desc "Futubull trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/download/history?client=11"
    strategy :json do |json|
      json["data"]&.map do |item|
        next if item["is_next"] == 1

        item["version"]
      end
    end
  end

  auto_updates true

  app "FutuNiuniu.app"

  uninstall quit: "cn.futu.niuniu"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.niuniu.nx",
  ]
end

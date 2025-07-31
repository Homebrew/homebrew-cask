cask "futubull@legacy" do
  version "15.26.12508"
  sha256 "15192e49f4d5e939a93fa292a70180bcbfe76ddd238cd6e2a785a3d4cb2e7a23"

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
  depends_on macos: ">= :high_sierra"

  app "FutuNiuniu.app"

  uninstall quit: "cn.futu.niuniu"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.niuniu.nx",
  ]
end

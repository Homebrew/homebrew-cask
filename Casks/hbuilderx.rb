cask "hbuilderx" do
  version "3.7.11.20230427"
  sha256 "4af14f05470f7d6080680de2f207c0dcf16c23e097b94de50ed8f66f3813f116"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
      verified: "download1.dcloud.net.cn/download/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end

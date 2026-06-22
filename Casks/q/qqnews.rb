cask "qqnews" do
  arch arm: "arm64", intel: "x64"
  url_arch = on_arch_conditional arm: "arm64", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel"

  version "2.3.60"
  sha256 arm:   "5a673612957fd8f427d8e2ebaa7b4549fb291cf6163565274ff142220b846239",
         intel: "1744bf4f4ac8e5c6e96e3730c32f94ea423a4a51fd6c5a933f6ae5bca1ad49bf"

  url "https://h5.news.qq.com/qqnews-desk/mac-#{url_arch}/qqnews_#{version}_#{arch}_signed.zip"
  name "qqnews"
  name "腾讯新闻"
  desc "Tencent News client"
  homepage "https://news.qq.com/"

  livecheck do
    url "https://h5.news.qq.com/qqnews-desk/mac-#{livecheck_arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :catalina

  app "腾讯新闻.app"

  zap trash: [
    "~/Library/Application Support/com.tencent.macNet",
    "~/Library/Caches/com.tencent.macNet",
    "~/Library/HTTPStorages/com.tencent.macNet",
    "~/Library/Preferences/com.tencent.macNet.plist",
  ]
end

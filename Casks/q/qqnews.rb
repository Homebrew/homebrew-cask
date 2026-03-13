cask "qqnews" do
  arch arm: "arm64", intel: "x64"
  url_arch = on_arch_conditional arm: "arm64", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel"

  version "2.3.20"
  sha256 arm:   "eb853c56106f646b2cab214abe97abf6bcb5e8400648b732aa46481652924496",
         intel: "1fe2ca24d2393c7a8bc05e8c0f9b2978d2448019aa60150e971fcd741c5ee693"

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
  depends_on macos: ">= :catalina"

  app "腾讯新闻.app"

  zap trash: [
    "~/Library/Application Support/com.tencent.macNet",
    "~/Library/Caches/com.tencent.macNet",
    "~/Library/HTTPStorages/com.tencent.macNet",
    "~/Library/Preferences/com.tencent.macNet.plist",
  ]
end

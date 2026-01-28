cask "qqnews" do
  arch arm: "arm64", intel: "x64"
  url_arch = on_arch_conditional arm: "arm64", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel"

  version "2.3.0"
  sha256 arm:   "ba61e9ed911feb3ed7ecbcd3c19d82cbb7e4ba8c89815e5e9887aa5493b53901",
         intel: "ec7a70dcfbf3dbab6fbc0d0c9f938f97ef08ccd4dd36588811e130b1fe423700"

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

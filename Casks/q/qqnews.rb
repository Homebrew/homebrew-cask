cask "qqnews" do
  arch arm: "arm64", intel: "x64"
  url_arch = on_arch_conditional arm: "arm64", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel"

  version "2.4.30"
  sha256 arm:   "548da1f289798c36489827ebef2fa4254c6c092ceb54407e3491382e7b204fce",
         intel: "f24fc1cd6e1391a9953040d7b319fc5f0068cfb55d4c1a046e0e579304145fc6"

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
  depends_on :macos

  app "腾讯新闻.app"

  uninstall quit: "com.tencent.macNet"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.macnet.sfl*",
    "~/Library/Application Support/com.tencent.macNet",
    "~/Library/Caches/com.tencent.macNet",
    "~/Library/HTTPStorages/com.tencent.macNet",
    "~/Library/Preferences/com.tencent.macNet.plist",
  ]
end

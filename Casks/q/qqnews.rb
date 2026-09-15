cask "qqnews" do
  arch arm: "arm64", intel: "x64"
  url_arch = on_arch_conditional arm: "arm64", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel"

  version "2.4.10"
  sha256 arm:   "3c0141e3154a5a75cd86bbf7c0bec2e4fd666372fb6273522e7effaf9a69212a",
         intel: "31df130d3577f07844396ba0cbba679f1f3cbf57c7abb5bce24a1e2450df0137"

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
    "~/Library/Application Support/com.tencent.macNet",
    "~/Library/Caches/com.tencent.macNet",
    "~/Library/HTTPStorages/com.tencent.macNet",
    "~/Library/Preferences/com.tencent.macNet.plist",
  ]
end

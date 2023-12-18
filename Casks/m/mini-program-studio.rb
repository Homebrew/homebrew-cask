cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  on_arm do
    version "3.8.6"
    sha256 "e42be25e39f8cac757d8a2db94b70692afc7cc7b456f7d9afac5179a118b8944"
  end
  on_intel do
    version "3.8.6"
    sha256 "0266c6a13e1439b119f3386e8774e7f89e89ad1f74c6a0ee534454670f2e54d3"
  end

  url "https://alipay-miniapp-public.oss-cn-hangzhou.aliyuncs.com/mfupload/MiniProgramStudio-#{version}#{arch}.dmg",
      verified: "alipay-miniapp-public.oss-cn-hangzhou.aliyuncs.com/mfupload/"
  name "Mini Program Studio"
  name "小程序开发者工具"
  desc "IDE for the development of Alipay applets"
  homepage "https://opendocs.alipay.com/mini/ide"

  # The download page (https://opendocs.alipay.com/mini/ide/download) is
  # rendered using JavaScript. The URL below returns JSON data that contains
  # the HTML for the release information, so we can match within that.
  livecheck do
    url "https://opendocs.alipay.com/api/content/006l6m"
    regex(/MiniProgramStudio[._-](\d+(?:\.\d+)*)/i)
  end

  app "小程序开发者工具.app"

  zap trash: [
    "~/Library/Application Support/小程序开发者工具",
    "~/Library/Preferences/com.ant.miniprogram.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.savedState",
  ]
end

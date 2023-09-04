cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  on_arm do
    version "3.7.13"
    sha256 "9d57e49c3ef114f4fd7a25850385e383ddb4829f994f04552c20e97d5b44a211"
  end
  on_intel do
    version "3.7.13"
    sha256 "ddef2653d27b4d96ccef7e88082fdcd9ab37aaddaba3f4b829d43cf2ab287650"
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

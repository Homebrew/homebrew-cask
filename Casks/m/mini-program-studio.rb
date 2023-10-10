cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  on_arm do
    version "3.8.3"
    sha256 "e40159a9bb3b4802f24c1d81708175ccb7141f7fd6ef094c4d4aae9c8d579748"
  end
  on_intel do
    version "3.8.3"
    sha256 "ff6db33c266df0d308fd52d44c2d00273aa799229cae27a90fe87a5accd8c5e7"
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

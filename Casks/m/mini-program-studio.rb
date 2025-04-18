cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  version "3.9.56"
  sha256 arm:   "0ae395cb9bb689f4c0d3d3343e7c7ce83bd9afa001b2075088582489ec56e0a6",
         intel: "79839b3bc6ab5ec98b3b49cac33025360ecc9987977a805f5dd5098154317638"

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

  depends_on macos: ">= :catalina"

  app "小程序开发者工具.app"

  zap trash: [
    "~/Library/Application Support/小程序开发者工具",
    "~/Library/Preferences/com.ant.miniprogram.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.savedState",
  ]
end

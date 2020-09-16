cask "mini-program-studio" do
  version "1.13.7,bdb97283-1173-4185-aed0-fad47f7810ae"
  sha256 "391c72c8246048726829de9f218389e4d0dfd8ddf3fdab3a03a04791a7c57442"

  # gw.alipayobjects.com/ was verified as official when first introduced to the cask
  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/#{version.before_comma}/MiniProgramStudio-#{version.before_comma}.dmg"
  name "Mini Program Studio"
  name "小程序开发者工具"
  homepage "https://open.alipay.com/channel/miniIndex.htm"

  app "小程序开发者工具.app"

  zap trash: [
    "~/Library/Application Support/小程序开发者工具",
    "~/Library/Preferences/com.ant.miniprogram.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.savedState",
  ]
end

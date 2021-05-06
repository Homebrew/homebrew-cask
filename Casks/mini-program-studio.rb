cask "mini-program-studio" do
  version "2.0.6,45f57ec9-2dd1-4150-b107-2003b55b91d6"
  sha256 "d825eed5500d8127741c4b691826ff06b54e66a6f583de7bbbb5a4ffe5672058"

  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/MiniProgramStudio-#{version.before_comma}.dmg",
      verified: "gw.alipayobjects.com/"
  name "Mini Program Studio"
  name "小程序开发者工具"
  desc "DingTalk, produced by Alibaba, is a seamless communication across devices."
  homepage "https://open.alipay.com/channel/miniIndex.htm"

  app "小程序开发者工具.app"

  zap trash: [
    "~/Library/Application Support/小程序开发者工具",
    "~/Library/Preferences/com.ant.miniprogram.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.savedState",
  ]
end

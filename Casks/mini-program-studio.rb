cask "mini-program-studio" do
  version "1.15.7,b9179b0f-9656-4f2a-a42d-f08e335dd696"
  sha256 "1a0d1e322a36a83e1d887d569efcdb0a88f0edec786a60301599d9c99e150b8c"

  url "https://gw.alipayobjects.com/os/bmw-prod/#{version.after_comma}.dmg",
      verified: "gw.alipayobjects.com/"
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

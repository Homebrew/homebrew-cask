cask "mini-program-studio" do
  version "2.0.6,45f57ec9-2dd1-4150-b107-2003b55b91d6"
  sha256 "d825eed5500d8127741c4b691826ff06b54e66a6f583de7bbbb5a4ffe5672058"

  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/MiniProgramStudio-#{version.before_comma}.dmg",
      verified: "gw.alipayobjects.com/"
  name "Mini Program Studio"
  name "小程序开发者工具"
  desc "DingTalk, produced by Alibaba, is a seamless communication across devices"
  homepage "https://opendocs.alipay.com/mini/ide"

  # The download page (https://opendocs.alipay.com/mini/ide/download/) is
  # rendered using JavaScript. The URL below returns JSON data that contains
  # the HTML for the release information, so we can match within that.
  livecheck do
    url "https://opendocs.alipay.com/api/content/006l6m"
    regex(%r{href=.*?/([a-z\d-]+)/MiniProgramStudio[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page|
      page.scan(regex).map do |match|
        (match[0] && match[1]) ? "#{match[1]},#{match[0]}" : ""
      end
    end
  end

  app "小程序开发者工具.app"

  zap trash: [
    "~/Library/Application Support/小程序开发者工具",
    "~/Library/Preferences/com.ant.miniprogram.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.savedState",
  ]
end

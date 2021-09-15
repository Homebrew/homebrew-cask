cask "mini-program-studio" do
  version "2.3.8,fe8cec27-a3bc-45b2-a3db-ad8581e60687"
  sha256 "9a0d4d66c64b883a3ef378859556ba04c5ca9ac35831886d122153f3ce090529"

  url "https://gw.alipayobjects.com/os/volans-demo/#{version.after_comma}/MiniProgramStudio-#{version.before_comma}.dmg",
      verified: "gw.alipayobjects.com/"
  name "Mini Program Studio"
  name "小程序开发者工具"
  desc "IDE for the development of Alipay applets"
  homepage "https://opendocs.alipay.com/mini/ide"

  # The download page (https://opendocs.alipay.com/mini/ide/download) is
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

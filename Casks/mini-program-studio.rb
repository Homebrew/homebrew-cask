cask "mini-program-studio" do
  version "2.3.5,33a60368-271a-4951-9c02-54f7ef9bc676"
  sha256 "cd0d6937e8f51763db844fe4e44bcf2c02415f8a837ee7a76709cd7d47a7e8d1"

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

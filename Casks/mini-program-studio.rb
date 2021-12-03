cask "mini-program-studio" do
  version "2.5.6,6d3b92d2-548c-4af2-a9fb-036b2d176e88"
  sha256 "7e620d914c2210303343d75ca3e267f1f7439e00c47849e2d69bc88d85114869"

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

cask "mini-program-studio" do
  version "2.5.3,eff9a8c7-aead-4196-b9df-4559129a9709"
  sha256 "7580275142cb1195cc8d764e3bff9ce694d82f5b2649010b11bb0a58724f35d0"

  url "https://gw.alipayobjects.com/os/volans-demo/#{version.csv.second}/MiniProgramStudio-#{version.csv.first}.dmg",
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

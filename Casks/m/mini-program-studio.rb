cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  on_arm do
    version "3.6.4,1fef232c-6124-43f2-886b-6294d2c52336"
    sha256 "030d210f9fc5e72320e4afcc088793cbc5526181a46307f02afc55a333ef1120"
  end
  on_intel do
    version "3.6.4,98def6cf-f1cc-46e8-826b-1d0f981ffcfe"
    sha256 "c2996c1d5bf7f2be646bcc912cb7bf99f44d5225c6a04fe505c96a7d702c904b"
  end

  url "https://alipay-miniapp-public.oss-cn-hangzhou.aliyuncs.com/mfupload/#{version.csv.second}/MiniProgramStudio-#{version.csv.first}#{arch}.dmg",
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
    strategy :page_match do |page|
      # Get stable branch major_minor version
      major_minor = page.match(/(\d+(?:\.\d+)+)\s+稳定版/i)[1]
      next if major_minor.blank?

      # Get major_minor_patch of latest stable release
      # https://gw.alipayobjects.com/os/volans-demo/64838471-01a5-4d01-8895-b82f93a8ea6d/MiniProgramStudio-2.9.1-x64.dmg
      dynamic_regex =
        %r{href.*?/([a-z\d-]+)/MiniProgramStudio[._-]v?(#{major_minor}\.?(?:\d+(?:\.\d+)*)?)#{arch}\.dmg}i
      page.scan(dynamic_regex).map do |match|
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

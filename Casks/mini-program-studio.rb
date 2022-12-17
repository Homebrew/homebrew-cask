cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  on_intel do
    version "3.2.6,3db2a95b-1665-4e7b-ae40-6e70f9e17888"
    sha256 "d5dae572b6c6eef431f07aa2a452e5c8c8f0b6b84af596c3fdf08e88bdee4da3"
  end
  on_arm do
    version "3.2.6,1301e7d2-362c-4cc9-96b8-1df9a7dd91fc"
    sha256 "9c9b53d9910684b676eecefbfd7b73f786a70906fc6658e348a66c28560f3d10"
  end

  url "https://gw.alipayobjects.com/os/volans-demo/#{version.csv.second}/MiniProgramStudio-#{version.csv.first}#{arch}.dmg",
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
    strategy :page_match do |page|
      # Get stable branch major_minor version
      major_minor = page.match(/(\d+(?:\.\d+)+)\s+稳定版/i)[1]
      next if major_minor.blank?

      # Get major_minor_patch of latest stable release
      # https://gw.alipayobjects.com/os/volans-demo/64838471-01a5-4d01-8895-b82f93a8ea6d/MiniProgramStudio-2.9.1-x64.dmg
      dynamic_regex = %r{href.*?/([a-z\d-]+)/MiniProgramStudio[._-]v?(#{major_minor}\.(?:\d+(?:\.\d+)*))#{arch}\.dmg}i
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

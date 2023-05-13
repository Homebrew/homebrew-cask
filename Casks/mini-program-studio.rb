cask "mini-program-studio" do
  arch arm: "-arm64", intel: "-x64"

  on_arm do
    version "3.3.3,473624af-67c4-4f44-938a-b84217d1db3b"
    sha256 "9e73204f12cba2657551363669b08194f0060cfeaa456ab987540d1aa3cba790"
  end
  on_intel do
    version "3.3.3,4ddf7f5b-73cd-42dd-806f-5fd90a8327b8"
    sha256 "539f1f259a1095e1d1639f27db6e7ef218e89a956d1aa394d8c143804b82f965"
  end

  url "https://gw.alipayobjects.com/os/volans-demo/#{version.csv.second}/MiniProgramStudio-#{version.csv.first}#{arch}.dmg",
      verified: "gw.alipayobjects.com/os/volans-demo/"
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

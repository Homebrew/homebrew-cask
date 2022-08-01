cask "mini-program-studio" do
  arch = Hardware::CPU.intel? ? "-x64" : "-arm64"

  if Hardware::CPU.intel?
    version "3.1.3,ae1bb1b2-16bc-4e53-92af-78ebe212ab33"
    sha256 "99bf5553598eb1d89051f790e757c5002ccc17953c7d5503ae21430fc7b27551"
  else
    version "3.0.2,146f340b-cb3d-4b1e-9f1f-9d2f1bf9d16e"
    sha256 "04f38d83c059a3abe8b22e7c55775e30a28101b393174213499b9b3ef7606afe"
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

cask "th-makerx" do
  version "4.6.0"
  sha256 "07daa2d1af9d1000b6dcd2ce9dca6f0d0d78ecf97fac895b87826a9b9592aa8f"

  url "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/hqx/Th-MakerX_#{version.no_dots}.zip"
  name "Th-MakerX"
  desc "Makes resized image files of dropped image files"
  homepage "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html"

  livecheck do
    url "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html"
    regex(%r{/Th-MakerX_(\d)(\d)(\d)\.zip">Download Now}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}.#{match[1]}.#{match[2]}" }
    end
  end

  depends_on macos: :big_sur

  app "Th-MakerX_#{version.no_dots}/Th-MakerX.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.ne.wind.miko.thmakerx3.sfl*",
    "~/Library/Preferences/jp.ne.wind.miko.ThMakerX3.plist",
  ]
end

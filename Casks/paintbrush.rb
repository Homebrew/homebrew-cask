cask "paintbrush" do
  version "2.5.0,20190914"
  sha256 "fca1d23f6da1ff1fe6768ba67cd692362cbf86ad9adf72431514740a37c513b6"

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version.before_comma}/Paintbrush-#{version.before_comma}.zip",
      verified: "downloads.sourceforge.net/paintbrush/"
  name "Paintbrush"
  desc "Image editor"
  homepage "https://paintbrush.sourceforge.io/"

  livecheck do
    url "https://paintbrush.sourceforge.io/updates#{version.major}x.xml"
    strategy :sparkle do |item|
      "#{item.short_version}.0,#{item.version}"
    end
  end

  app "Paintbrush.app"

  zap trash: [
    "~/Library/Application Scripts/com.soggywaffles.Paintbrush",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.soggywaffles.paintbrush.sfl*",
    "~/Library/Caches/com.soggywaffles.Paintbrush",
    "~/Library/Containers/com.soggywaffles.Paintbrush",
    "~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist",
    "~/Library/Preferences/com.soggywaffles.Paintbrush.plist",
  ]
end

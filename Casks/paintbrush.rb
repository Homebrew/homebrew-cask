cask "paintbrush" do
  version "2.5.1,20201220"
  sha256 "518ddfa4bc85d694ea18d32b3ef45576706e184db6988a9809365f6bcabdd1fd"

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version.before_comma}/Paintbrush-#{version.before_comma}.zip",
      verified: "downloads.sourceforge.net/paintbrush/"
  name "Paintbrush"
  desc "Image editor"
  homepage "https://paintbrush.sourceforge.io/"

  livecheck do
    url "https://paintbrush.sourceforge.io/updates/paintbrush-release.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
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

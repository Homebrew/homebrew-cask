cask "bezel" do
  version "5.4.0"
  sha256 "953f25d8a88cd8130648ee2cc15d80aa1aa09e69ba756f76027ceb1f98d2e07f"

  url "https://download.nonstrict.eu/bezel/Bezel-#{version}.zip"
  name "Bezel"
  desc "iOS screen output recorder"
  homepage "https://getbezel.app/"

  livecheck do
    url "https://download.nonstrict.eu/bezel/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Bezel.app"

  zap trash: [
    "~/Library/Application Scripts/com.nonstrict.BezelAppleTVHelper",
    "~/Library/Application Scripts/com.nonstrict.BezelDALService",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nonstrict.bezel-direct.sfl*",
    "~/Library/Application Support/com.nonstrict.Bezel-direct",
    "~/Library/Caches/com.nonstrict.Bezel-direct",
    "~/Library/Containers/com.nonstrict.BezelAppleTVHelper",
    "~/Library/Containers/com.nonstrict.BezelDALService",
    "~/Library/HTTPStorages/com.nonstrict.Bezel-direct",
    "~/Library/Preferences/com.nonstrict.Bezel-direct.plist",
  ]
end

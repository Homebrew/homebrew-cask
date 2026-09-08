cask "bezel" do
  version "4.7.1"
  sha256 "a4c63645eddc34d1cefd8a949aaf9565b2f8ad5c72a84ac5e5420e9616fea00a"

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
    "~/Library/Caches/com.nonstrict.Bezel-direct",
    "~/Library/HTTPStorages/com.nonstrict.Bezel-direct",
    "~/Library/Preferences/com.nonstrict.Bezel-direct.plist",
  ]
end

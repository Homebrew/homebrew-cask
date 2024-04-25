cask "bezel" do
  version "1.4.5"
  sha256 "5ddbedc18b7cbbff3a4afac5365bb8fafe03e084736141a7cf681e5d2b0adc29"

  url "https://download.nonstrict.eu/bezel/Bezel-#{version}.zip",
      verified: "download.nonstrict.eu/bezel/"
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
  depends_on macos: ">= :monterey"

  app "Bezel.app"

  zap trash: [
    "~/Library/Caches/com.nonstrict.Bezel-direct",
    "~/Library/HTTPStorages/com.nonstrict.Bezel-direct",
    "~/Library/Preferences/com.nonstrict.Bezel-direct.plist",
  ]
end

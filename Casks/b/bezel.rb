cask "bezel" do
  version "2.6.1"
  sha256 "6b663aed9fdae897ca48f1649224ea593302eebed3ae40444cd28d8328be3921"

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

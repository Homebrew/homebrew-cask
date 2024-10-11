cask "bezel" do
  version "2.0.1"
  sha256 "a124be7c9e67f555964f3fa2df6da083dbec7e9c30f07acc0b0fdf07bd5db569"

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

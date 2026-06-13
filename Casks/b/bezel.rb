cask "bezel" do
  version "4.4.0"
  sha256 "25c984d26873ccd2318e549a4c54467cea8349241e27bc7ffdd70d1e91f58ba7"

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
  depends_on macos: :sonoma

  app "Bezel.app"

  zap trash: [
    "~/Library/Caches/com.nonstrict.Bezel-direct",
    "~/Library/HTTPStorages/com.nonstrict.Bezel-direct",
    "~/Library/Preferences/com.nonstrict.Bezel-direct.plist",
  ]
end

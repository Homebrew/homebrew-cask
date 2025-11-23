cask "sodamusic" do
  version "2.8.8"
  sha256 "27b518d711d9030fb31938ba02d997a79dbc9e28eeea11b56f4cee8c343b2614"

  url "https://lf-luna-release.qishui.com/obj/luna-release/#{version}/243782093/SodaMusic-v#{version}-official-darwin_universal.dmg",
      verified: "lf-luna-release.qishui.com/obj/luna-release/"
  name "SodaMusic"
  name "汽水音乐"
  desc "Music app"
  homepage "https://www.douyin.com/qishui"

  livecheck do
    url "https://is.snssdk.com/service/settings/v3/?caller_name=luna_home_page"
    strategy :json do |json|
      json.dig("data", "settings", "pc_download", "version")
    end
  end

  depends_on macos: ">= :big_sur"

  app "汽水音乐.app"

  zap trash: [
    "~/Library/Application Support/SodaMusic",
    "~/Library/Caches/com.soda.music",
    "~/Library/HTTPStorages/com.soda.music",
    "~/Library/Preferences/com.soda.music.plist",
  ]
end

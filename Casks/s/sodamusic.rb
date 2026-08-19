cask "sodamusic" do
  version "3.7.0,452316191"
  sha256 "6f1aed0aba0e2b958a1f579acae5336e0bd2d5a27c35936604379dcc4169fc62"

  url "https://lf-luna-release.qishui.com/obj/luna-release/#{version.csv.first}/#{version.csv.second}/SodaMusic-v#{version.csv.first}-official-darwin_universal.dmg",
      verified: "lf-luna-release.qishui.com/obj/luna-release/"
  name "SodaMusic"
  name "汽水音乐"
  desc "Music app"
  homepage "https://www.douyin.com/qishui"

  livecheck do
    url "https://is.snssdk.com/service/settings/v3/?caller_name=luna_home_page"
    regex(%r{/v?(\d+(?:\.\d+)*)/SodaMusic[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :json do |json, regex|
      match = json.dig("data", "settings", "pc_download", "darwin", "universal", "url")&.match(regex)
      next unless match

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: :big_sur

  app "汽水音乐.app"

  zap trash: [
    "~/Library/Application Support/SodaMusic",
    "~/Library/Caches/com.soda.music",
    "~/Library/HTTPStorages/com.soda.music",
    "~/Library/Preferences/com.soda.music.plist",
  ]
end

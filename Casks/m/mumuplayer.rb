cask "mumuplayer" do
  version "1.4.38"
  sha256 "1abebdc6a5e40d0a3e2caabdb0913f8d9ceee929207f6af872a4e73e82e02f1d"

  url "https://a11.gdl.netease.com/MuMuPlayerPro-v#{version}-global.dmg",
      verified: "a11.gdl.netease.com/"
  name "MumuPlayer Pro"
  desc "Seamlessly run Android games and apps on your Apple Silicon Mac"
  homepage "https://www.mumuplayer.com/mac/"

  livecheck do
    url "https://mumu.nie.netease.com/api/mac/pro/appcast/alter?architecture=arm64&version=#{version}"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["items"]&.map do |item|
        match = item["version"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "MumuPlayer Pro.app"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.netease.mumu.nemux-global",
    "~/Library/Application Support/com.netease.mumu.nemux-global",
    "~/Library/Caches/com.netease.mumu.nemux-global*",
    "~/Library/Group Containers/*.group.com.netease.mumu.nemux-global",
    "~/Library/HTTPStorages/com.netease.mumu.nemux-global*",
    "~/Library/Preferences/com.netease.mumu.nemux-global*.plist",
    "~/Library/Saved Application State/com.netease.mumu.nemux-global*.savedState",
    "~/Library/WebKit/com.netease.mumu.nemux-global*",
  ]
end

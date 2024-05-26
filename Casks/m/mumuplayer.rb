cask "mumuplayer" do
  version "1.4.24"
  sha256 "b7ba3909b1062d90e26facbc956d0a30a23fd3d10121e6e24d97b4a8e8d37f91"

  url "https://a11.gdl.netease.com/MuMuPlayerPro-v#{version}.dmg",
      verified: "a11.gdl.netease.com/"
  name "Mumu Player Pro"
  name "MuMu模拟器Pro"
  desc "Android emulator"
  homepage "https://mumu.163.com/mac/"

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

  app "MuMuLauncher.app"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.netease.mumu.nemux",
    "~/Library/Application Support/com.netease.mumu.nemux",
    "~/Library/Caches/com.netease.mumu.nemux*",
    "~/Library/Group Containers/*.group.com.netease.mumu.nemux",
    "~/Library/HTTPStorages/com.netease.mumu.nemux*",
    "~/Library/Preferences/*.netease.mumu*.plist",
    "~/Library/Saved Application State/com.netease.mumu.nemux*.savedState",
    "~/Library/WebKit/com.netease.mumu.nemux*",
  ]
end

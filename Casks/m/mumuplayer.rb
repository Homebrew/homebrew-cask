cask "mumuplayer" do
  version "1.2.145"
  sha256 "fe5e5285d077522b5c4ecc3b1804928f10c13ac031baa29cf32f3a45dabfdb5f"

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

  app "MuMuPlayer.app"

  zap trash: [
    "~/Library/Application Scripts/9699UND7H5.group.com.netease.mumu.nemux",
    "~/Library/Application Support/com.netease.mumu.nemux",
    "~/Library/Caches/com.netease.mumu.nemux",
    "~/Library/Caches/com.netease.mumu.nemux.emulator",
    "~/Library/Caches/com.netease.mumu.nemux.installer",
    "~/Library/Group Containers/9699UND7H5.group.com.netease.mumu.nemux",
    "~/Library/HTTPStorages/com.netease.mumu.nemux",
    "~/Library/HTTPStorages/com.netease.mumu.nemux.binarycookies",
    "~/Library/HTTPStorages/com.netease.mumu.nemux.emulator",
    "~/Library/HTTPStorages/com.netease.mumu.nemux.installer",
    "~/Library/Preferences/com.netease.mumu.nemux.emulator.plist",
    "~/Library/Preferences/com.netease.mumu.nemux.installer.plist",
    "~/Library/Preferences/com.netease.mumu.nemux.plist",
    "~/Library/Preferences/group.com.netease.mumu.plist",
    "~/Library/Saved Application State/com.netease.mumu.nemux.emulator.savedState",
    "~/Library/Saved Application State/com.netease.mumu.nemux.installer.savedState",
    "~/Library/Saved Application State/com.netease.mumu.nemux.savedState",
    "~/Library/WebKit/com.netease.mumu.nemux",
    "~/Library/WebKit/com.netease.mumu.nemux.emulator",
  ]
end

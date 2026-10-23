cask "mumuplayer" do
  version "1.9.11"
  sha256 "33a48ed9eedbee16423258116ecc5ed4e3efde6ee5058a4b1eefb8df333698e6"

  url "https://a11.gdl.netease.com/MuMuPlayer_#{version}_default.tar.gz"
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
  depends_on arch: :arm64
  depends_on :macos

  app "MuMuPlayer.app"

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

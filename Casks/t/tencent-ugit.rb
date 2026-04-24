cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.47.1"
  sha256 arm:   "fdde5c727ae127c5a3893daa7ba62951f970777455501234a0486b5df28534b2",
         intel: "ed132d85047d6d6fdc0e957fb1d658a47719327223cddbf8cf8abf41107d53b1"

  url "https://ugit.qq.com/downloads/ugit_public/UGit-#{arch}-#{version}.dmg"
  name "UGit"
  desc "Tencent Git GUI Client"
  homepage "https://ugit.qq.com/"

  livecheck do
    url "https://ugit.qq.com/changelog.json"
    strategy :json do |json|
      version = json.first&.dig("version")
      version&.delete_prefix("v")
    end
  end

  depends_on macos: ">= :catalina"

  app "UGit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.ugit.sfl*",
    "~/Library/Application Support/UGit",
    "~/Library/Caches/com.tencent.ugit",
    "~/Library/Caches/com.tencent.ugit.ShipIt",
    "~/Library/HTTPStorages/com.tencent.ugit",
    "~/Library/Preferences/com.tencent.ugit.plist",
  ]
end

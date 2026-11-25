cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.55.1"
  sha256 arm:   "d020df2806c698db7858ba44a2d2847cb269a7e59855160b1249bb82aaaea47c",
         intel: "e047711b80de33dfa501fb7eba29c2837b97b938c6963058c183877f715753c5"

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

  depends_on :macos

  app "UGit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tencent.ugit.sfl*",
    "~/Library/Application Support/UGit",
    "~/Library/Caches/com.tencent.ugit",
    "~/Library/Caches/com.tencent.ugit.ShipIt",
    "~/Library/HTTPStorages/com.tencent.ugit",
    "~/Library/Logs/UGit",
    "~/Library/Preferences/com.tencent.ugit.plist",
  ]
end

cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.55.0"
  sha256 arm:   "6fa355b68b1ed71b40941b0a8c1d9dff2e97496966d6bb354f6dae0641c7bab1",
         intel: "2e610c73841535602546998e07a50c82647e7f125482eb22f4dded06bd76aee3"

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

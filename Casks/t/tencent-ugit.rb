cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.49.2"
  sha256 arm:   "9a6119c8e9ab171a5548c4bd6902da1ac1b01dd938224f7d2b758244b7576495",
         intel: "29d0b6e2f1c3270e30fba663484b52cf6bb8d69561a678269d274e844842ee61"

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

  depends_on macos: :catalina

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

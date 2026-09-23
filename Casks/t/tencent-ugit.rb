cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.54.0"
  sha256 arm:   "237f16f29f5c636a8333d21fbe0a7e5c44a918d07c5d661e843a2c3b8c6dc8e5",
         intel: "c0abc7acb4da1a1e75d0546281eabec932c04480b30a37a43bad45bc99866ac1"

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
    "~/Library/Preferences/com.tencent.ugit.plist",
  ]
end

cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.54.4"
  sha256 arm:   "711e9508849f0842c6eb903de18d1e8b93587b2ccd61aad6f28ba9070c2538ad",
         intel: "33fa6b37bbb59f66b372cda39391d7eb12219459223808141f56dc7e934a9d72"

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

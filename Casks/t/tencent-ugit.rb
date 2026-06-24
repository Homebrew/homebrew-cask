cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.50.1"
  sha256 arm:   "c5187b1393007810bf2cb18e11776b0cff4e0b59567eee2c3441a56769d6e0df",
         intel: "c0431193184c973f2e812bbd2b62ffb59df61a0316b0e5d9c42122eea43f81b5"

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

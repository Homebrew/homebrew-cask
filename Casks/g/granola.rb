cask "granola" do
  version "7.488.3"
  sha256 "d405d6d873471043f2e117e8a030aa40cff5b7d3e494683aab86269b53751faf"

  url "https://dr2v7l5emb758.cloudfront.net/#{version}/Granola-#{version}-mac-universal.dmg",
      verified: "dr2v7l5emb758.cloudfront.net/"
  name "Granola"
  desc "AI-powered notepad for meetings"
  homepage "https://www.granola.ai/"

  livecheck do
    url "https://api.granola.ai/v1/check-for-update/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Granola.app"

  uninstall quit: "com.granola.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.granola.app.sfl*",
    "~/Library/Application Support/Granola",
    "~/Library/Caches/com.granola.app",
    "~/Library/HTTPStorages/com.granola.app",
    "~/Library/Preferences/com.granola.app.plist",
    "~/Library/Saved Application State/com.getgranola.app.savedState",
  ]
end

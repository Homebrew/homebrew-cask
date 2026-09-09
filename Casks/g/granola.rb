cask "granola" do
  version "7.543.3"
  sha256 "0f7b9f70b97556e1188e6cd95b5c01f1fa3e9effaef28e9b33cb303623471971"

  url "https://dr2v7l5emb758.cloudfront.net/#{version}/Granola-#{version}-mac-universal.dmg"
  name "Granola"
  desc "AI-powered notepad for meetings"
  homepage "https://www.granola.ai/"

  livecheck do
    url "https://api.granola.ai/v1/check-for-update/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

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

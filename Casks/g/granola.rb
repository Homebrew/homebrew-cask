cask "granola" do
  version "7.668.2"
  sha256 "ba3ed2ea40202f84c60386769e2b43f2b868cc2c45d80cf248bb4876bb804242"

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

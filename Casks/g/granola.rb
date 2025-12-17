cask "granola" do
  version "6.442.0"
  sha256 "8a784222747c2b03d21deb752a7d1544cd700bec3c02093487127ee1674398c0"

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
  depends_on macos: ">= :big_sur"

  app "Granola.app"

  zap trash: [
    "~/Library/Application Support/Granola",
    "~/Library/Caches/com.granola.app",
    "~/Library/HTTPStorages/com.granola.app",
    "~/Library/Preferences/com.granola.app.plist",
    "~/Library/Saved Application State/com.getgranola.app.savedState",
  ]
end

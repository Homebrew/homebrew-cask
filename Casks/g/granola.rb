cask "granola" do
  version "5.256.0"
  sha256 "60bffe56b6fe7ce8b77c68b07ca923c5f1e19045ed9f58756a3584258321c184"

  url "https://dr2v7l5emb758.cloudfront.net/#{version}/Granola-#{version}-mac-universal.dmg",
      verified: "dr2v7l5emb758.cloudfront.net/"
  name "Granola"
  desc "AI-powered notepad for meetings"
  homepage "https://www.granola.ai/"

  livecheck do
    url "https://go.granola.so/download"
    strategy :header_match
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

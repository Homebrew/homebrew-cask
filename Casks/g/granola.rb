cask "granola" do
  version "7.205.0"
  sha256 "c660f4991bb679f04274c2f34250c009edb86e79bf9fcddff4ca74538c73dd85"

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

  zap trash: [
    "~/Library/Application Support/Granola",
    "~/Library/Caches/com.granola.app",
    "~/Library/HTTPStorages/com.granola.app",
    "~/Library/Preferences/com.granola.app.plist",
    "~/Library/Saved Application State/com.getgranola.app.savedState",
  ]
end

cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.12.3"
  sha256 arm:   "8c1dd142c07acb8b6edc67e6a27c8f2962fba854fbc84696d32a6e58d6558071",
         intel: "94a16568dbd2f29e7d1672ddb531e639a3d8d4dd08ce645b9c61f92c9519a88d"

  url "https://update.rekord.cloud/releases/lexicon/latest/lexicon-#{version}-mac-#{arch}.zip"
  name "Lexicon"
  desc "Library management for professional DJs"
  homepage "https://www.lexicondj.com/"

  livecheck do
    url "https://update.rekord.cloud/releases/lexicon/latest/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Lexicon.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rekord.cloud.lexicon.sfl*",
    "~/Library/Application Support/Lexicon",
    "~/Library/Caches/com.rekord.cloud.lexicon",
    "~/Library/HTTPStorages/com.rekord.cloud.lexicon",
    "~/Library/Logs/lexicon",
    "~/Library/Preferences/com.rekord.cloud.lexicon.plist",
  ]
end

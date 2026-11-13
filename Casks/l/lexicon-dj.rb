cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.12.1"
  sha256 arm:   "1b849f47b2deafb7fd1b53e518b90d9689267b718c73a96dbdd31d4a12cb6689",
         intel: "7bdf84afc392076f8dd168b29680105a3b906591596d60e1ea252c6a81e9be6c"

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

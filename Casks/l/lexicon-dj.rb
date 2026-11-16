cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.12.2"
  sha256 arm:   "c77e46be32540aa698c22151c59e98b11af9b6f36f7fdc5c7e54deccceb6e0c2",
         intel: "5c4ece13127c530055fa05eb8f147d0411bc076f322a310863e3d70af4967911"

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

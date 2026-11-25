cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.12.4"
  sha256 arm:   "3715ed01cc714e1f7a9193d8872dfa6ff6fbf2f0d5aa7bc3c578e3048c4f4a7e",
         intel: "02c9ee2a58917bc42a872d862a354cf205d1efee778b24c9f1acec4315abe01a"

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

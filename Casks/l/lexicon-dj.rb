cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.10"
  sha256 arm:   "8083af1940b10e28f52acadd03022aaa66c5b81de13f0fcd4e2a83a28b4ec94a",
         intel: "c3fb4294ee177b7818962e862f77745a91cc68633ea42c5436098309a6528089"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://update.rekord.cloud/releases/lexicon/latest/lexicon-#{version}-mac-#{arch}.zip",
      verified: "update.rekord.cloud/releases/lexicon/latest/"
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

  zap trash: "~/Library/Application Support/Lexicon"
end

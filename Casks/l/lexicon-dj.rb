cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.12.0"
  sha256 arm:   "bc40cf05713c0a41412998e8d9d216e9957e46e1d9c18e93b54ada5d5fd8e683",
         intel: "6b75f690c1726aa93ac918b1bf9481c172043102819e56ecdcfa59e1ccb40630"

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

  zap trash: "~/Library/Application Support/Lexicon"
end

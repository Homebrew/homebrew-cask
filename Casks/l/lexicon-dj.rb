cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.4"
  sha256 arm:   "44442996b8738accb3d0a4e755cf73ddb66ee294ee5b3d13767cde93343fd3d5",
         intel: "4661164e333f4533f93ad7b4453489a93a281824d2b872dceae88f55c27b4cf8"

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
  depends_on macos: ">= :catalina"

  app "Lexicon.app"

  zap trash: "~/Library/Application Support/Lexicon"
end

cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.8"
  sha256 arm:   "18931f3531ada3e2eeaa75ea75f8d854ee477f1cf1a614873f32e8c841cbeaa1",
         intel: "0865154c984afa0736d01661d0e52bddc5090d8c9da9679c24d156630e9fa77d"

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

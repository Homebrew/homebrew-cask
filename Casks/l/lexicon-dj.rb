cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.12"
  sha256 arm:   "e8656340a3d43f9d25c6e2b82e8ad1c34fbe782c4c97f5f5685327b84f598b06",
         intel: "6c85f79f9a79b8f4b8dd73e62e34f24ea6e0dabf7afdfd89c400f7fec1980aaf"

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

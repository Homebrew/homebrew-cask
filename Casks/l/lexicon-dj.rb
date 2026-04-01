cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.4"
  sha256 arm:   "59e114d4fc66c67cd2409cca5dd60c47446eeb57fa4c3b5f75f478fc97d0d887",
         intel: "675fe5fa3bd3195bd104e6cd9cc75080d9776c7f44bd010d4285273df82ae1f3"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
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

  app "Lexicon.app"

  zap trash: "~/Library/Application Support/Lexicon"
end

cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.8"
  sha256 arm:   "52691d086e778bd9bf6c5d234d58075bd315e03f1dec241a0b56f099ce2eac81",
         intel: "8aaf623355a334d4e6b47f53af610395d0cdae9b7337d4712b3956b97f963c67"

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

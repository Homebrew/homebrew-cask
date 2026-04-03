cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.6"
  sha256 arm:   "08cf079807cb3eef9677ea62dc66c2bd9ad4091a986930121a000a419f3b9393",
         intel: "4f808cf98b6bf51a2c4b388db647ff74a6fff711a8a4de900c701e6c4694502e"

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

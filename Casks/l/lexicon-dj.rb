cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.0"
  sha256 arm:   "c97f78e7a80dfc122b02e72ede5729d7d28c56f4d28fc94c00d72ebf97a6c977",
         intel: "3994aef4369002f053d2549d970301b7a7d490b1d26c4be7685fcc2804af08b6"

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

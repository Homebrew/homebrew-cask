cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.2"
  sha256 arm:   "d943702c3263bc1d6786e2633e4a7724c4f1f1ebfe0c554656ae85f73795dc9a",
         intel: "702e6a88ef97c9b20c5e272d6f1e1f4661a640cc2b0b82fa868bfb23421ec042"

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

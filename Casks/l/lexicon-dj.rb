cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.11"
  sha256 arm:   "77f0d69c7279a83b9140c6c38a0d27b818aeef445037b1aefbf939feba5de7ae",
         intel: "5a257bcf1f73e7c169998b126c2f252bda2cf832d6288e5517277c95f37aef22"

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

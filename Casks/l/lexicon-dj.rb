cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.8"
  sha256 arm:   "5b4944f7892198d5e716fa653f3d5d23809d13bc4e31822b404979480161ecf2",
         intel: "9995511246c1bfd27aab91691e88b3f092c65b70a3ee48b54af54fa2d266ac63"

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

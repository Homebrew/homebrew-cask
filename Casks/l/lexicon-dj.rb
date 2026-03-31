cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.3"
  sha256 arm:   "0fc1e0b23b8d3d284f89c9a4a0a3567e24a36ee0fe70ba572baabb42b859643e",
         intel: "bc1076525795c66ce0051da169e67bd00d22d0022e35ca5fb8d9851e5fc1f37b"

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

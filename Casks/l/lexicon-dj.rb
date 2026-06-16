cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.0"
  sha256 arm:   "234c1ae8f34b9660cb1ac33e08d6434535981c1e55ef9941dc9457f1753a70ab",
         intel: "882cf0c6a7a31e631ceb58cf9bfafa97cdd617f5aa1e4599e4d6a297edd6530c"

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

cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.10"
  sha256 arm:   "06c8cf8fcbc0824e3b44df56a8a5aaf7775cdd69290da59e71de1133c2839021",
         intel: "a61de66d4123baf2282e7465869eac11bdc78ec884975114da11bd9d1e14cbf4"

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

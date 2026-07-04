cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.7"
  sha256 arm:   "9dda1e9667fc33424d1244a3e5b22afaacf538aaaf7ea94989b7e15ccbbf5cad",
         intel: "f47c875bfa3992ceb2efa0f25f83212a4298b3b879c827cc988f736b2ef2d484"

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

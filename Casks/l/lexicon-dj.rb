cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.5"
  sha256 arm:   "f3ab3d65c7d49ec8696104f1e58c296c64be495eeec48b7e4c7c28aec6f887c9",
         intel: "6c12efa7e3e4d935af873c9809789d95be9ccdf307362cc51e43dc118c7ad175"

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

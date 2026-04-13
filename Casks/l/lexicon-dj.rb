cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.7"
  sha256 arm:   "a45e18da404dc316ff6a58d606b20b7e91b2546f112f0310ba3d9fb6d356f79c",
         intel: "6949538e5093ef473c93328284666148cc170c7f30e6bdb8263c8de67807f210"

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

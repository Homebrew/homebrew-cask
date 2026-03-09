cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.1"
  sha256 arm:   "d0a2836b5f277b0d3f69f5bddeb0cf2f91ee4faaf7a1da784ec514f2c5a75919",
         intel: "0137d51f2d90fa71b65a4e6ec48a90c014ebdce6ff430272a9343f3ecb540808"

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

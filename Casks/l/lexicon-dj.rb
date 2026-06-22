cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.2"
  sha256 arm:   "a5ee20befe70386c055c288de8d50959d9fd7ef126ca561ada9b5caf100815fb",
         intel: "27de4ef7323e13c5569cb3bd3d52d4ebd52f574e1577ff12b9abd99c89142c84"

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

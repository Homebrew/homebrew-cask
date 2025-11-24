cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.9"
  sha256 arm:   "c4520431f09959a34a87c35aae536f3e8e030fd54658eb0d22bdf393903cf3ea",
         intel: "bcfae5b6ee6a25104ccbe84d9c7f7f9f898b697994c7ea65734b44515d710350"

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

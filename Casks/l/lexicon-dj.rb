cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.9"
  sha256 arm:   "59105404616a44141c4e4ceab7e669e36022cea65ac5e438f8de20d1301184e1",
         intel: "ddf4717c8bf9ca9bf7dfda36252245feabfbdd1b4c2bea032d2d714a6f3d12a3"

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

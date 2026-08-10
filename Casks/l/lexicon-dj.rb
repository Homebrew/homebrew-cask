cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.11"
  sha256 arm:   "806687e5d8f14998787d6fd0bb2b126783549a56b99e4e2acb44e5bd57cf6836",
         intel: "3450525486739049b96e8d24926fc54fe28c777b19aaaa16b0c50d9a24cdce3a"

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

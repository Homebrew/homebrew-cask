cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.10.9"
  sha256 arm:   "670e6c2f2a5b097ac1a76bd299164b50fcccdd758be67da30b09efb8bef42762",
         intel: "f3759d6b75ba26c9ba522a95df008229f1b84bfc8285fe2fcc55caef82920f29"

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

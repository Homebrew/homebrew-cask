cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.13"
  sha256 arm:   "5ff697895c5245dfab283655502c17c5a80ad9a0aca956d3bc2198397953bf3d",
         intel: "514287b77a02d1ca756ccedddaa11ffcaf739a5a8d7c5f1f8a92d865d9acb1c8"

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

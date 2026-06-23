cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.5"
  sha256 arm:   "784ac3d02d266e6a24de017e19dd2d2799d247fd2ea8c4512c474d763177d205",
         intel: "25abc6f9b4dce87f60809d34bf99c82d4d9e2ae07481fe15caa82dfb3bd49559"

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

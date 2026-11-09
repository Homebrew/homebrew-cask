cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.15"
  sha256 arm:   "941cac80ce7618306f5c2a0b14383215b30e16db1cf0d5d4d35a2c130dd62245",
         intel: "e3905063bb6d7d4f8e408de614526753d086e745f40a8dac9e4cf80ad145c4b8"

  url "https://update.rekord.cloud/releases/lexicon/latest/lexicon-#{version}-mac-#{arch}.zip"
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

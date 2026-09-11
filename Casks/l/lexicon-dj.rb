cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.14"
  sha256 arm:   "24aa8c81d5371e86c14ce5a70aaefc8a89c6690fbaee79ab0abbf79d14db1f66",
         intel: "9edf9a386ce394ccf97d0e3805b7ee6fa885c24d21a48e8c823e1cd1c992f1e7"

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

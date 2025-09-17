cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.6"
  sha256 arm:   "17325003b13e98afcf50e0530ffdf357ef96e5cad2e681eb11031820d10b1306",
         intel: "84c836f5fc73cc8c98a8391658127956463129018e5611cfcc07f82950360d8d"

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

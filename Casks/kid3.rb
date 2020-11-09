cask "kid3" do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.8.4"
  sha256 "18c893879bf20f376480b2062beb0ee7a0c7e2ad4663d11bffff994990568c4d"

  # downloads.sourceforge.net/kid3/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast "https://sourceforge.net/p/kid3/news/feed.rss"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end

cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.8.6"
  sha256 "81bfcaa03af7308a7d59b93f9e1375f8057d403ab7a5c2729c9ed753cf565cf6"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  appcast "https://sourceforge.net/p/kid3/news/feed.rss"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end

cask "sherlock" do
  version "1.10.0"
  sha256 "66b5cbf36969015bd5cc335969ff95f24e47da777e0a6633cc55e5c356aef30a"

  # dl.devmate.com/io.inspiredcode.Sherlock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.inspiredcode.Sherlock/Sherlock.dmg"
  appcast "http://sparkle.sherlock.inspiredcode.io"
  name "Sherlock"
  homepage "https://sherlock.inspiredcode.io/"

  depends_on macos: ">= :sierra"

  app "Sherlock.app"
end

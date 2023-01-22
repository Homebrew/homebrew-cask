cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.3"
  sha256 "3b7e6c59c87a633c60e36371307eb2341fd1d396ab8f3b19e0b55902ec9da216"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end

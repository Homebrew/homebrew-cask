cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.0"
  sha256 "a6b892125e1309272e50dbaff22c7624c978785b7ebf020c4cb50bb556b9c9f9"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end

cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.2"
  sha256 "f29bdd539c2cdfae0f5a4ee10e567a23f882c6eba6cae788a10ee4d9d6391b9b"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end

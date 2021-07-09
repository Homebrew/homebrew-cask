cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.8.7"
  sha256 "236d02b5c87d4758e7c0f415a3937028ff88b22a400a1f42536e1021aa1b64b7"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end

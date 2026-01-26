cask "kid3" do
  arch arm: "arm64", intel: "amd64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.7"
  sha256 arm:   "f43e10d44fd2d4b33328f7e4db6d25e33a39716500bc9f1a7a3340e5b564b070",
         intel: "11d9f03e34c40434972a5073f7e385931a41513345cb032d212c4a1372caf4f8"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-#{arch}.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.kde.org/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"

  zap trash: "~/Library/Preferences/com.kid3.Kid3.plist"
end

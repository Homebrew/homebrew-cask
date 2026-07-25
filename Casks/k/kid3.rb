cask "kid3" do
  arch arm: "arm64", intel: "amd64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.10.1"
  sha256 arm:   "b8d5339c8b2e584e073a42f8f90fce8cc6865e121040d1a10d476d74d0a54950",
         intel: "243c842d7bc74b54934051562ad4a6ebbdf4ef6866b4c35a4a8e41803b97cfcc"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-#{arch}.dmg",
      verified: "downloads.sourceforge.net/kid3/"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.kde.org/"

  depends_on macos: :ventura

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"

  zap trash: "~/Library/Preferences/com.kid3.Kid3.plist"
end

cask "kid3" do
  arch arm: "arm64", intel: "amd64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.10.2"
  sha256 arm:   "851181d89f68f70a198153a0091fb40f6d0282a358db38268dfb00bf31279a95",
         intel: "11431916bb623141fafcb65fa18c8a421415926c9c4a2f10f7ac5fbed100c6b2"

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-#{arch}.dmg"
  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.kde.org/"

  depends_on macos: :ventura

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"

  zap trash: "~/Library/Preferences/com.kid3.Kid3.plist"
end

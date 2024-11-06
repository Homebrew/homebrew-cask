cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.6"

  on_high_sierra :or_older do
    sha256 "34ef3f1f157be232f7c4c59468081266f9cd3c99be499d82c1d32e858a7bb0e4"

    url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-Qt5.dmg",
        verified: "downloads.sourceforge.net/kid3/"
  end
  on_mojave :or_newer do
    arch arm: "arm64", intel: "amd64"

    sha256 arm:   "f16a4bc4d8351270b70de0e0e9016f3654ad7eb5af51974b1874a7b1a7269e6e",
           intel: "34ef3f1f157be232f7c4c59468081266f9cd3c99be499d82c1d32e858a7bb0e4"

    url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-#{arch}.dmg",
        verified: "downloads.sourceforge.net/kid3/"
  end

  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.kde.org/"

  depends_on macos: ">= :high_sierra"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"

  zap trash: "~/Library/Preferences/com.kid3.Kid3.plist"
end

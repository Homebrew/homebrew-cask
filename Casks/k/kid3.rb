cask "kid3" do
  arch arm: "arm64", intel: "amd64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.10.0"
  sha256 arm:   "d18a73808cff3b3155b5b87f44a6a790a52f1d546741440e9ae7e0cccbec67c5",
         intel: "b344286e84143e6613e9f433f1e887c24e33c2320a0c597342ec1cbd35eb8e68"

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

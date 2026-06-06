cask "kid3" do
  arch arm: "arm64", intel: "amd64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.10.0"
  sha256 arm:   "2992dc81b20eb9097f6b73411f74d09d23fb8374774c5f97609c74b5a1610473",
         intel: "7508aece4fc0553b13ee63e646375d6b9f45a10296463c2772470d183bab101d"

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

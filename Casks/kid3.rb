cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.4"

  on_high_sierra :or_older do
    sha256 "b8668c493982bcbeade9b17244d440158b24f17149ac7f5988e086f65063207d"

    url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-Qt5.dmg",
        verified: "downloads.sourceforge.net/kid3/"

    depends_on macos: "<= :high_sierra"
  end
  on_mojave :or_newer do
    sha256 "b8668c493982bcbeade9b17244d440158b24f17149ac7f5988e086f65063207d"

    url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-amd64.dmg",
        verified: "downloads.sourceforge.net/kid3/"

    depends_on macos: ">= :mojave"
  end

  name "Kid3"
  desc "Audio tagger focusing on efficiency"
  homepage "https://kid3.sourceforge.io/"

  app "kid3.app"
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"

  zap trash: "~/Library/Preferences/com.kid3.Kid3.plist"
end

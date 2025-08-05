cask "kid3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version "3.9.7"

  on_high_sierra :or_older do
    sha256 "ed6bab51f97583a6b967ed9bf9cff7ab3bbce9d3b9e22260f77593cf499b9804"

    url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin-Qt5.dmg",
        verified: "downloads.sourceforge.net/kid3/"
  end
  on_mojave :or_newer do
    arch arm: "arm64", intel: "amd64"

    sha256 arm:   "f43e10d44fd2d4b33328f7e4db6d25e33a39716500bc9f1a7a3340e5b564b070",
           intel: "11d9f03e34c40434972a5073f7e385931a41513345cb032d212c4a1372caf4f8"

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

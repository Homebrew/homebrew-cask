cask "a-better-finder-rename" do
  version "12.04"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  name "A Better Finder Rename"
  desc "Renamer for files, music and photos"
  homepage "https://www.publicspace.net/ABetterFinderRename/"

  livecheck do
    url "https://www.publicspace.net/app/signed_abfr#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "A Better Finder Rename #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/A Better Finder Rename #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/net.publicspace.abfr#{version.major}.help*",
    "~/Library/Caches/net.publicspace.abfr#{version.major}",
    "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
    "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
  ]
end

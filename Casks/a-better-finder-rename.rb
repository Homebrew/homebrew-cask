cask 'a-better-finder-rename' do
  version '10.19'
  sha256 '19d91f421e33610b220cd31cf008def64d2d9e83513cc38e52a7d1a2172216f7'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '846f4d6e36a1f07a5d36c3a3d835ce82c050fb9e3aaa83f682ac1e23a48ae557'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'

  auto_updates true
  depends_on macos: '>= :lion'

  app "A Better Finder Rename #{version.major}.app"

  zap delete: [
                "~/Library/Application Support/A Better Finder Rename #{version.major}",
                "~/Library/Caches/com.apple.helpd/Generated/net.publicspace.abfr#{version.major}.help",
                "~/Library/Caches/net.publicspace.abfr#{version.major}",
                "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
                "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
                "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
              ]
end

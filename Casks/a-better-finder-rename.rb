cask 'a-better-finder-rename' do
  version '10.43'
  sha256 'c27a13af70785a36bbf0f6e55f58a9dc0b2ffd522b0efa26d0660243f023dfc6'

  url "https://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "https://www.publicspace.net/app/signed_abfr#{version.major}.xml"
  name 'A Better Finder Rename'
  homepage 'https://www.publicspace.net/ABetterFinderRename/'

  auto_updates true

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

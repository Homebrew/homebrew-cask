cask 'a-better-finder-rename' do
  version '10.42'
  sha256 '2c16c54d734bb015fdf5c9b5dd62c0e36d1054336c03f25c3f7528868cf0c90c'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml"
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'

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

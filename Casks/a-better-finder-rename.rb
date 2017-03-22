cask 'a-better-finder-rename' do
  version '10.14'
  sha256 '64bee2a3e694f0da1e168eca17cc4d7537264228e578c067831609a844b1a149'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '9ee6035e6d1ef82f68cd8b353b8d5abe000a55354ae629c054fbce83f9706029'
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

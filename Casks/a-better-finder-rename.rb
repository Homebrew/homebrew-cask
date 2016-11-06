cask 'a-better-finder-rename' do
  version '10.10'
  sha256 '989423a2a0a27e6f4424dff14d0fe87bbdb89ba660e727a70a92b180370a8ce9'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '7e3de7cd9ab128fe2d2e387ddcac62475a9642af5a952648249b7ff68e22c2f9'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'

  app "A Better Finder Rename #{version.major}.app"

  zap delete: [
                "~/Library/Application Support/A Better Finder Rename #{version.major}",
                "~/Library/Caches/net.publicspace.abfr#{version.major}",
                "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
                "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
                "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
              ]
end

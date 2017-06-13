cask 'a-better-finder-attributes' do
  version '6.05'
  sha256 'f1eeaedfed5a9fe1fe6777bca8e5e265e2d3e71aedb398ccf8782d8e5ac165ac'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml",
          checkpoint: '13f663c360067db8891ceea870526b27e1d35ed7c9363e80bf2c835e5b2d9af3'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"

  zap delete: [
                "~/Library/Caches/net.publicspace.abfa#{version.major}",
                "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
                "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
                "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
              ]
end

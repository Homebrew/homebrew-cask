cask 'a-better-finder-attributes' do
  version '6.06'
  sha256 '0cbc3fa2ffb29f5f0df9b2dac970f01781b086b1d7f333269ff3a2a98d99e65e'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml",
          checkpoint: '8304cd55decfcfda6eab143f0f611707a7ae24fd3f69ab67d4214dcc48696808'
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

cask 'stack' do
  version '2.6.4.20200506'
  sha256 '676241a70d26832f8910bdeb64e5c44f8ff265a27b1267c2daf15beefe4e4a00'

  # transip.net/stack/ was verified as official when first introduced to the cask
  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.pkg"
  appcast 'https://mirror.transip.net/stack/update/?version=0.0.0&platform=macos&oem=stack&versionsuffix=&updatesegment=18&sparkle=true'
  name 'STACK'
  homepage 'https://www.transip.nl/stack'

  pkg "stack-#{version}.pkg"

  uninstall login_item: 'stack',
            signal:     ['TERM', 'nl.transip.stack'],
            pkgutil:    'nl.transip.stack'

  zap trash: [
               '~/Library/Caches/nl.transip.stack',
               '~/Library/Application Support/STACK/',
             ]
end

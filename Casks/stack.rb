cask 'stack' do
  version '2.4.1.70454'
  sha256 '41daf141ffe51fe2c6357e6fe9a289303323c4b5421da89673878e0bfe475bed'

  # transip.net/stack was verified as official when first introduced to the cask
  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.pkg"
  appcast 'https://mirror.transip.net/stack/update/?version=2.4.0.1&platform=macos&oem=stack&versionsuffix=&sparkle=true'
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

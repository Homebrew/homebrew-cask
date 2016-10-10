cask 'stack' do
  version '2.2.4.163'
  sha256 '4ace1320a2adc7530ab1e4b97c4892b1a5c8882fc0fa233259e07acdfeb85b0c'

  # transip.net/stack was verified as official when first introduced to the cask
  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.pkg"
  name 'STACK'
  homepage 'https://transip.nl/stack'

  pkg "stack-#{version}.pkg"

  uninstall login_item: 'stack',
            signal:     ['TERM', 'nl.transip.stack'],
            pkgutil:    'nl.transip.stack'

  zap delete: [
                '~/Library/Caches/nl.transip.stack',
                '~/Library/Application Support/STACK/',
              ]
end

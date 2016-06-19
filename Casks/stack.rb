cask 'stack' do
  version '2.1.3.0'
  sha256 '21437c146af18b7865d691b26c5a0fb2282e1873b22fa08d0f702ed15d71ce15'

  # transip.net/stack was verified as official when first introduced to the cask
  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.pkg"
  name 'STACK'
  homepage 'https://transip.nl/stack'
  license :gratis

  pkg "stack-#{version}.pkg"

  uninstall login_item: 'stack',
            signal:     ['TERM', 'nl.transip.stack'],
            pkgutil:    'nl.transip.stack'

  zap delete: [
                '~/Library/Caches/nl.transip.stack',
                '~/Library/Application Support/STACK/',
              ]
end

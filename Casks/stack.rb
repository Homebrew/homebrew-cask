cask 'stack' do
  version '2.2.3.162'
  sha256 '9e80e5ab2d3b10432e2239500937b3213790bc91c898b1c073ce8c3910b745ae'

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

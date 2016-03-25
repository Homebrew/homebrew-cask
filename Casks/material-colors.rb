cask 'material-colors' do
  version '1.0.1'
  sha256 '4d3296c84bf55bc4f8848443627fe33bb96451389cdd1ad054eee59ef026be4a'

  # github.com/romannurik/MaterialColorsApp was verified as official when first introduced to the cask
  url "https://github.com/romannurik/MaterialColorsApp/releases/download/v#{version}/MaterialColors-#{version}.zip"
  appcast 'https://github.com/romannurik/MaterialColorsApp/releases.atom',
          checkpoint: '0669026137027828455c3f4c818db9490792b48c1a7fb0885cf860a9d911968e'
  name 'Material Colors for Mac'
  homepage 'https://github.com/romannurik/MaterialColorsApp'
  license :apache

  app 'Material Colors.app'

  zap delete: [
                '~/Library/Application Support/net.nurik.roman.materialcolors.ShipIt',
                '~/Library/Application Support/Material Colors',
                '~/Library/Caches/Material Colors',
                '~/Library/Caches/net.nurik.roman.materialcolors',
                '~/Library/Preferences/net.nurik.roman.materialcolors.plist',
              ]
end

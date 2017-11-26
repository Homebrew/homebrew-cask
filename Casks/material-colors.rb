cask 'material-colors' do
  version '1.1.0'
  sha256 '61a23327f723f61b714b1718a7e30cc6f3c5bcee2b2103074354244a76e029d8'

  url "https://github.com/romannurik/MaterialColorsApp/releases/download/v#{version}/MaterialColors-#{version}.zip"
  appcast 'https://github.com/romannurik/MaterialColorsApp/releases.atom',
          checkpoint: '26edfa88306c1daf1a273fb6765623de114eee1a83d4978dc039af3f6059817c'
  name 'Material Colors for Mac'
  homepage 'https://github.com/romannurik/MaterialColorsApp'

  app 'Material Colors.app'

  zap trash: [
               '~/Library/Application Support/net.nurik.roman.materialcolors.ShipIt',
               '~/Library/Application Support/Material Colors',
               '~/Library/Caches/Material Colors',
               '~/Library/Caches/net.nurik.roman.materialcolors',
               '~/Library/Preferences/net.nurik.roman.materialcolors.plist',
             ]
end

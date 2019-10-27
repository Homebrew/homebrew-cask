cask 'material-colors' do
  version '2.0.0'
  sha256 'a764f8af33499a96d46e3e79fe2e4594eb0ccff6217cff0920d9b44982a0f8be'

  url "https://github.com/romannurik/MaterialColorsApp/releases/download/v#{version}/MaterialColors-#{version}.zip"
  appcast 'https://github.com/romannurik/MaterialColorsApp/releases.atom'
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

cask 'sketchbook' do
  version '8.3.1'
  sha256 '6827167edbfc04cabe44bdcacb2f21fa8d94960bcad8032959754849a54def4f'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

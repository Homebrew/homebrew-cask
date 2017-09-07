cask 'sketchbook' do
  version '8.4.3'
  sha256 'ceeb4409312c2712ee636e7709e943680edc970f8da794aa9500d67c97468d1f'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

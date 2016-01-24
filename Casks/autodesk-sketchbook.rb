cask 'autodesk-sketchbook' do
  version '8.0'
  sha256 'e5cf66721a94f1919fcc4d52682776895b90ed6e750dfce82bae7bccc576fa02'

  url 'https://cdn.sketchbook.com/mac/SketchBook_v8.0_mac.dmg'
  name 'Autodesk Sketchbook'
  homepage 'https:/://www.sketchbook.com/'
  license :unknown

  pkg 'SketchBook_v8.0_mac.pkg'
end

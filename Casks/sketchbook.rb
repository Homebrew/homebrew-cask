cask 'sketchbook' do
  version '8.0'
  sha256 'e5cf66721a94f1919fcc4d52682776895b90ed6e750dfce82bae7bccc576fa02'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

cask 'sketchbook' do
  version '8.5.0'
  sha256 'adf0b2185c1a24fc78cad597d5c02decc6b23c50894fbb7827b680cc0601729d'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

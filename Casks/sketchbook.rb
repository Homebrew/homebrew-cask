cask 'sketchbook' do
  version '8.5.1'
  sha256 '5362b635735071ba9d60e60fa88b07e45a6f27e9d416b9ed4081fa1ba375c0a0'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

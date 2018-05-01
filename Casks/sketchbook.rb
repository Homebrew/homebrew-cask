cask 'sketchbook' do
  version '8.6.0'
  sha256 '99a2a28aadbe2ee3e2dd222b6b8eef0b35d42f7354ca622743d8e7acca6d3d77'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

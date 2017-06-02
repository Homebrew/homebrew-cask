cask 'sketchbook' do
  version '8.4.2'
  sha256 '31c46fdd1e436259b927b32f5257861069bb212a6a1e6f3a701e1ff7df999537'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

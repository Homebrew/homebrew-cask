cask 'sketchbook' do
  version '8.4.1'
  sha256 '33f2033b67364baf005d7a9a1166494160853bdc674fa72926dfa1128c0de639'

  url "https://cdn.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

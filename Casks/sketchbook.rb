cask 'sketchbook' do
  version '8.7.0'
  sha256 'b9cba9d81571abe76f2f5b976cc95646c879f45c6fdfc4d7053a626ee0b94b49'

  url "https://update.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://update.sketchbook.com/mac/latest'
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end

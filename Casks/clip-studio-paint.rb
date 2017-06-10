cask 'clip-studio-paint' do
  version '1.6.2'
  sha256 'ecb8a6ebeccfe2464ca54c356f57ffb964f3af793d4751b0acc2598d9517728b'

  url "http://vd.clipstudio.net/clipcontent/en/lib/clipstudio/paint/data/#{version.no_dots}/CSP_#{version.no_dots}ENm_app.pkg"
  name 'CLIP STUDIO PAINT'
  homepage 'http://www.clipstudio.net/en'

  pkg "CSP_#{version.no_dots}ENm_app.pkg"

  uninstall pkgutil: [
                       'jp.co.CELSYS.AggregateMdul.*',
                       'jp.co.CELSYS.ClipStudio*',
                     ]
end

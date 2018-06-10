cask 'clip-studio-paint' do
  version '1.7.4'
  sha256 '980db42affeef12da7e8e2a6055862d54fb0aa7a3cff2b4484326c2650448e36'

  url "http://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  name 'CLIP STUDIO PAINT'
  homepage 'http://www.clipstudio.net/en'

  pkg "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
                       'jp.co.CELSYS.AggregateMdul.*',
                       'jp.co.CELSYS.CertMdul.*',
                       'jp.co.CELSYS.ClipStudio*',
                     ]
end

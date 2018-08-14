cask 'clip-studio-paint' do
  version '1.7.8'
  sha256 'be304d3c35bda169132d85a0aca6466ba5bfffa48a2b619ac3a498353f04bbe3'

  url "http://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  name 'CLIP STUDIO PAINT'
  homepage 'http://www.clipstudio.net/en'

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
                       'jp.co.CELSYS.AggregateMdul.*',
                       'jp.co.CELSYS.CertMdul.*',
                       'jp.co.CELSYS.ClipStudio*',
                     ]
end

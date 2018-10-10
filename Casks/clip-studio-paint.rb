cask 'clip-studio-paint' do
  version '1.8.2'
  sha256 '55069bfd6ece3bacde37db2eef4fe37c013e0d6f3aed026e3894ed197fa392a2'

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  name 'CLIP STUDIO PAINT'
  homepage 'https://www.clipstudio.net/en'

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
                       'jp.co.CELSYS.AggregateMdul.*',
                       'jp.co.CELSYS.CertMdul.*',
                       'jp.co.CELSYS.ClipStudio*',
                     ]
end

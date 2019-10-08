cask 'clip-studio-paint' do
  version '1.9.4'
  sha256 '65ed5e08806814438401938f949fb1ebacbb00ea34e405b09ec9e0442dc751b6'

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  appcast 'https://www.clipstudio.net/en/dl'
  name 'CLIP STUDIO PAINT'
  homepage 'https://www.clipstudio.net/en'

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
                       'jp.co.CELSYS.AggregateMdul.*',
                       'jp.co.CELSYS.CertMdul.*',
                       'jp.co.CELSYS.ClipStudio*',
                     ]
end

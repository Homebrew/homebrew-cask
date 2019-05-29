cask 'clip-studio-paint' do
  version '1.9.0'
  sha256 'c005010ca84d0aa88503aa9a81a89cc3ebe6f762533a713dceacd769391f5669'

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

cask 'clip-studio-paint' do
  version '1.6.7'
  sha256 '113f1f7ea446a218403b5355876aac4bed169538236d1f5113c9a82c287d203f'

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

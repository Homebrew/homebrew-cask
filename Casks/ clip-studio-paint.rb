cask 'clip-studio-paint' do
  version '1.7.4'
  sha256 'aee575489100992ec24ba9d66bac4dc168728b66d913b08b2da72d69312ef02b'

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

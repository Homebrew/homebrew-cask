cask 'clip-studio-paint' do
  version '1.9.2'
  sha256 '77ed576d4305f918a6dbb66279bbc0ff01595490fbae41130c2d6760a5f80a1e'

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

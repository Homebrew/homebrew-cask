cask 'clip-studio-paint' do
  version '1.9.5'
  sha256 'b9f0c537a6eb7b4134971f03a2fe8f3afdee4d195ca121cb3a75cd7fa27f34be'

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

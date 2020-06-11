cask 'clip-studio-paint' do
  version '1.9.11'
  sha256 '2d951189de3fa242714f344d643f26fe90a8134e550dcd72b5137f7f4d68093e'

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  appcast 'https://www.clipstudio.net/en/dl',
          must_contain: version.no_dots
  name 'CLIP STUDIO PAINT'
  homepage 'https://www.clipstudio.net/en'

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
                       'jp.co.CELSYS.AggregateMdul.*',
                       'jp.co.CELSYS.CertMdul.*',
                       'jp.co.CELSYS.ClipStudio*',
                     ]
end

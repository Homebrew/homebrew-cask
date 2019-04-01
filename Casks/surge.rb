cask 'surge' do
  version '3.1.1-811'
  sha256 'f150a311102601face146e13df394304d5eea2254811f23769b259b19c8ea935'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"
end

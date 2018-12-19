cask 'surge' do
  version '3.0.4-759'
  sha256 'a00b22afc61caefdf513d30a1588bfe227c29ca16762c501e1cc104677c6c214'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"
end

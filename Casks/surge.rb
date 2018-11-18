cask 'surge' do
  version '3.0.3-754'
  sha256 'f99ad05f684e2ecc6bb2441f74a42776969ebfc4e169ec8e64ff3d64be1ccf95'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"
end

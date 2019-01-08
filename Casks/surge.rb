cask 'surge' do
  version '3.0.5-773'
  sha256 '2a49bf2e7ebb96fc97df183e5b2a3bf02b2eb81a1648b1902787d828501197a6'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"
end

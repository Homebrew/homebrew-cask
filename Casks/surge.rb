cask 'surge' do
  version '3.1.0-807'
  sha256 'bada1e297cf5b0748abe81694395c9f52b1592487da78b23ec8c7d94e5b5f1e4'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"
end

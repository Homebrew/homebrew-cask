cask 'surge' do
  version '3.0.2-736'
  sha256 '917c7d6f533a1f35cfce85f13ac0cea106c2d9449332bc178c86b309de1bdbca'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  app "Surge #{version.major}.app"
end

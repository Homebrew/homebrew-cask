cask 'surge' do
  version '3.0.3-753'
  sha256 'd31ae640c04bd5d5b84f8fd8a096e932a821df328e2d90b960537a999b48024e'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  app "Surge #{version.major}.app"
end

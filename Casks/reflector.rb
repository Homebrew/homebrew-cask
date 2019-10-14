cask 'reflector' do
  version '3.2.1'
  sha256 '4c825812c0ee7854a94ea0f496e7d30d80c6d2b8849a9fca9db07ea33b6e6b48'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml"
  name "Reflector #{version.major}"
  homepage 'https://www.airsquirrels.com/reflector/'

  app "Reflector #{version.major}.app"
end

cask 'reflector' do
  version '3.2.0'
  sha256 'c2dcdeb8d5ba1db3a6e65d85820250b292cf2bd040009bd16f4b441c67b97724'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml"
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  app "Reflector #{version.major}.app"
end

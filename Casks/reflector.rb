cask 'reflector' do
  version '2.6.0'
  sha256 '00dab8f66c3d8f0605257517ebe12d7edb10126e0732840e1c78051744a3e8e0'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml",
          checkpoint: '26f5ec51941725648ddb415aec6a36edf5eebc722bb2b992b2c1a29378c32b1f'
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app "Reflector #{version.major}.app"
end

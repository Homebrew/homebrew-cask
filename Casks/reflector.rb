cask 'reflector' do
  version '3.0.1'
  sha256 '6df2608e11a08cb0b71faf9b9267f442d04225eccfc01f646ac1dd2d3603c3a9'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml",
          checkpoint: '833bcaf099971d31531ea65dbfda4aa09f7ec37ff52e0b344aa8bc52a58638c3'
  name "Reflector #{version.major}"
  homepage 'http://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app "Reflector #{version.major}.app"
end

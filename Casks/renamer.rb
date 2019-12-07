cask 'renamer' do
  version '6.0.3'
  sha256 '1456bfa76055f81ef0c7d3b9a1811e7e49e59bcb365676d9215f87768eca5da6'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :mojave'

  app 'Renamer.app'
end

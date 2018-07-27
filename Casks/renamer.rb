cask 'renamer' do
  version '5.2.1'
  sha256 '97d00335cb973258eaa707e61c6d0df5b1351727ad1403a17918651d6b61c52b'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'http://renamer.com/'

  app 'Renamer.app'
end

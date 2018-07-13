cask 'renamer' do
  version '5.2.0'
  sha256 'ccc339c82229ff228b6a56b8f087bd21e2f2e7b8c045fa98d4fdbc8715864bb9'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'http://renamer.com/'

  app 'Renamer.app'
end

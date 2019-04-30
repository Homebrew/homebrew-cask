cask 'renamer' do
  version '6.0.1'
  sha256 'c8a3e5109b589a552cc4294217f57f61b90020c651a0fc5a4ac938ccc92c71e3'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :mojave'

  app 'Renamer.app'
end

cask 'renamer' do
  version '5.2.2'
  sha256 '4390b0af2889cda86f9124a30040e43e8275864ca57a5c5b2d8e4f0fab66e5a2'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :sierra'

  app 'Renamer.app'
end

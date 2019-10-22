cask 'renamer' do
  version '6.0.2'
  sha256 '9f4a754de2438cca06d1a35c2ca200f8d2432168a099770f1f4e443103ec63d3'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :mojave'

  app 'Renamer.app'
end

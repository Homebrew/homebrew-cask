cask 'renamer' do
  version '6.0.4'
  sha256 'cdc57bde386870ab3ea021d9d9e76e48592baf7ba004995600e00c9c89b5c39f'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :mojave'

  app 'Renamer.app'
end

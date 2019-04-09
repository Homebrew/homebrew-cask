cask 'renamer' do
  version '5.3.1'
  sha256 'b909bbc98bced9f74bcdc59492674f75e49434a6a75686ab67cc81e88c8d28c5'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :sierra'

  app 'Renamer.app'
end

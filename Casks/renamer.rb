cask 'renamer' do
  version '6.0.5'
  sha256 'fbe82a98acfafa5bd2841a1ffe0c9064edc3504abe07e67363e68c20513b1609'

  # storage.googleapis.com/incrediblebee/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip"
  appcast "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
  name 'Renamer'
  homepage 'https://renamer.com/'

  depends_on macos: '>= :mojave'

  app 'Renamer.app'
end

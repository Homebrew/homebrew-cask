cask 'renamer' do
  version '5'
  sha256 :no_check # required as upstream package is updated in-place

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer.zip"
  name 'Renamer'
  homepage 'http://renamer.com/'

  app 'Renamer.app'
end

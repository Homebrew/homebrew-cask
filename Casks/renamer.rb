cask 'renamer' do
  version '5.0.3'
  sha256 '4d37b7c0d8b0a3fdf32f54caa1ae85a516213a3212b72bd006c8b7f45c7ba1ca'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer.zip"
  name 'Renamer'
  homepage 'http://renamer.com/'

  app 'Renamer.app'
end

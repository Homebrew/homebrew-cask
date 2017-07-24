cask 'renamer' do
  version '5.0.3'
  sha256 '9928730fb00bfbaa606ad903440fcbb108147f93f2284543d20f44286eaf074d'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer.zip"
  name 'Renamer'
  homepage 'http://renamer.com/'

  app 'Renamer.app'
end

cask 'filedrop' do
  version :latest
  sha256 :no_check

  # commondatastorage.googleapis.com/filedropme was verified as official when first introduced to the cask
  url 'https://commondatastorage.googleapis.com/filedropme/Filedrop.dmg'
  name 'Filedrop'
  homepage 'http://www.filedropme.com/'
  license :gratis

  app 'Filedrop.app'
end

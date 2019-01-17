cask 'cydiaimpactor' do
  version :latest
  sha256 :no_check

  # saurik.com was verified as official when first introduced to the cask
  url 'https://cydia.saurik.com/api/latest/1'
  name 'Cydia Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end

cask 'fingerlock' do
  version :latest
  sha256 :no_check

  # fingerkeyapp.azurewebsites.net was verified as official when first introduced to the cask
  url 'https://fingerkeyapp.azurewebsites.net/download/FingerKey-osx.zip'
  name 'FingerLock'
  homepage 'http://www.fingerkeyapp.com/'

  app 'FingerLock.app'
end

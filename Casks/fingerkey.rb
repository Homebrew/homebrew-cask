cask 'fingerkey' do
  version '2.0.6'
  sha256 'a40c4ae79284ec859fe7b0ede2071c609d215a59a786358de3f528967abbcbef'

  # fingerkeyapp.azurewebsites.net was verified as official when first introduced to the cask
  url 'https://fingerkeyapp.azurewebsites.net/download/FingerKey-osx.zip'
  appcast 'https://fingerkeyapp.azurewebsites.net/Appcast.xml'
  name 'FingerKey'
  homepage 'http://www.fingerkeyapp.com/'

  app 'FingerKey.app'
end

cask 'amadeus-pro' do
  version '2.5'
  sha256 '502467b1dda3f8294975191f7e8a6503fce2aa4bd830d9b82d093a6c99ec7865'

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'http://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

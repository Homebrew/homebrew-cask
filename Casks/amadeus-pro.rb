cask 'amadeus-pro' do
  version '2.6.1'
  sha256 'fde9153e92501534d65bb299b428b25092f36a852ab81a71d205cef552e6df09'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf',
          configuration: version.major_minor
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

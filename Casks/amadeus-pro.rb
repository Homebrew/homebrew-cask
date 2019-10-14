cask 'amadeus-pro' do
  version '2.6.2'
  sha256 '4ec12af4cb287094dc40e831834939acbd946c056e0340be59a5446dd10ea1a7'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf',
          configuration: version.major_minor
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

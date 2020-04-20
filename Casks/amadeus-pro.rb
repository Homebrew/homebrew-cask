cask 'amadeus-pro' do
  version '2.7.5'
  sha256 'c8362dc9eb44dcf1dc1cdb57a57c44f161d1f18b12a1b1b15b11cbd4e4cfcc6a'

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

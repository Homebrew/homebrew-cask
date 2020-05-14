cask 'amadeus-pro' do
  version '2.8.2'
  sha256 '252dde81287c609ad3e6c7c1a84774164cdb3fd569487d2d8f2b769037fbddc7'

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

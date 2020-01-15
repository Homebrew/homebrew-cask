cask 'amadeus-pro' do
  version '2.7.1'
  sha256 '4b49c708442f4f2614224449630541ba57c189ff7a2f8966cb33d49c10224ec4'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

cask 'amadeus-pro' do
  version '2.7.4'
  sha256 'a21d6c1af9ceb611867597c7b1d4e65b55cd7c7f9b0e8daeafab40378ca990d2'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

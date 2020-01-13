cask 'amadeus-pro' do
  version '2.7'
  sha256 '5895966e7fd05f3718012c272a895691942652d900bb49ca04bc90162f51cdc2'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

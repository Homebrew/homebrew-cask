cask 'amadeus-pro' do
  version '2.8'
  sha256 'cc96f5dc74de2b240950640afcb97283ee3a6723dfccb77fe5a939f05455ebf2'

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

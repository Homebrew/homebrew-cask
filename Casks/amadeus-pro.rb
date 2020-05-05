cask 'amadeus-pro' do
  version '2.8.1'
  sha256 'f93390018cd4ec8792a040aeaab419eea08f23dac7b7f5e3b6f94f08dfd50c75'

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

cask 'irip' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/iRip2/iRip.zip'
  appcast 'https://files.thelittleappfactory.com/iRip2/appcast.xml',
          :checkpoint => 'e934179f4e2cc9567565ae76ea1071cb735a2e92aa00893779f56aa31d6f7d5f'
  name 'iRip'
  homepage 'http://thelittleappfactory.com/irip/'
  license :commercial

  app 'iRip.app'
end

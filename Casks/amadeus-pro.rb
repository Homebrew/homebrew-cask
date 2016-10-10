cask 'amadeus-pro' do
  version :latest
  sha256 :no_check

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.dmg'
  name 'Amadeus Pro'
  homepage 'http://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end

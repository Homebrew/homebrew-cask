cask 'ppamorim-fruit' do
  version '1.0'
  sha256 '0a7769766037ae127acceb57271b3a9767c18cc4ae438e0e510d2c83da658b15'

  url "https://github.com/ppamorim/fruit/releases/download/#{version}/Fruit.saver.zip"
  appcast 'https://github.com/ppamorim/fruit/releases.atom'
  name 'Fruit'
  homepage 'https://github.com/ppamorim/fruit'

  screen_saver 'Fruit.saver'
end

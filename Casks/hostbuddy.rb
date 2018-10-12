cask 'hostbuddy' do
  version '2.0.0'
  sha256 '2460ad27a95603ca1a8ea5170e690ce0e98b66682480ad6711902dfb7feea312'

  # downloads-clickonideas.netdna-ssl.com/hostbuddy was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=22'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'

  app 'Hostbuddy.app'
end

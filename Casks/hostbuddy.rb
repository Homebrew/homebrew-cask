cask 'hostbuddy' do
  version '2.2.3,20_12'
  sha256 '13371a8b03df1035043421fb695aae945ca2e751266cfc35f422c51b0c5d8873'

  # downloads-clickonideas.netdna-ssl.com/hostbuddy was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=41'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'

  app 'Hostbuddy.app'
end

cask 'hostbuddy' do
  version '2.0.2,20_3'
  sha256 'ae9a55245b8995a2cbdf3db4db434fd82795cc60dded4a952369c141aa00d012'

  # downloads-clickonideas.netdna-ssl.com/hostbuddy was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/hostbuddy/hostbuddy#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=41'
  name 'Hostbuddy'
  homepage 'https://clickontyler.com/hostbuddy/'

  app 'Hostbuddy.app'
end

cask 'nottingham' do
  version '3.1.0,5'
  sha256 '54c861844846d8a1d21b089db0c33e4d9041f94d8b14c51900e5d59c6b3e7f05'

  # downloads-clickonideas.netdna-ssl.com/nottingham was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/nottingham/nottingham#{version.major}_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=35'
  name 'Nottingham'
  homepage 'https://clickontyler.com/nottingham/'

  app 'Nottingham.app'
end

cask 'nottingham' do
  version '4.0.0,7'
  sha256 '8914dface9e4f36845ce3455ed7bec3e0fc86f69f399ae00ada00299582cbf33'

  # downloads-clickonideas.netdna-ssl.com/nottingham was verified as official when first introduced to the cask
  url "https://downloads-clickonideas.netdna-ssl.com/nottingham/nottingham#{version.major}_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=35'
  name 'Nottingham'
  homepage 'https://clickontyler.com/nottingham/'

  app 'Nottingham.app'
end

cask 'jumpcut' do
  version '0.63'
  sha256 '19c84eefbc7f173af45affe3a9ca6fd9ec58d9bdf6bacef165085e63e82d54e1'

  # downloads.sourceforge.net/jumpcut was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jumpcut/jumpcut/#{version}/Jumpcut_#{version}.tgz"
  appcast 'https://jumpcut.sourceforge.io/jumpcut.appcast.xml'
  name 'Jumpcut'
  homepage 'https://jumpcut.sourceforge.io/'

  app 'Jumpcut.app'
end

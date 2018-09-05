cask 'jumpcut' do
  version '0.63'
  sha256 '19c84eefbc7f173af45affe3a9ca6fd9ec58d9bdf6bacef165085e63e82d54e1'

  url "https://downloads.sourceforge.net/jumpcut/jumpcut/#{version}/Jumpcut_#{version}.tgz"
  appcast 'http://jumpcut.sourceforge.net/jumpcut.appcast.xml'
  name 'Jumpcut'
  homepage 'http://jumpcut.sourceforge.net/'

  app 'Jumpcut.app'
end

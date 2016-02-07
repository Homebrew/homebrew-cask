cask 'jumpcut' do
  version '0.63'
  sha256 '19c84eefbc7f173af45affe3a9ca6fd9ec58d9bdf6bacef165085e63e82d54e1'

  url "http://downloads.sourceforge.net/project/jumpcut/jumpcut/#{version}/Jumpcut_#{version}.tgz"
  appcast 'http://jumpcut.sourceforge.net/jumpcut.appcast.xml',
          checkpoint: '2ec8b76c6b00b9725bddff1448c44f77c8ece233a1131328605412410e0276f0'
  name 'Jumpcut'
  homepage 'http://jumpcut.sourceforge.net/'
  license :mit

  app 'Jumpcut.app'
end

cask :v1 => 'jumpcut' do
  version '0.63'
  sha256 '19c84eefbc7f173af45affe3a9ca6fd9ec58d9bdf6bacef165085e63e82d54e1'

  url "http://downloads.sourceforge.net/project/jumpcut/jumpcut/#{version}/Jumpcut_#{version}.tgz"
  appcast 'http://jumpcut.sf.net/jumpcut.appcast.xml',
          :sha256 => '908a13b8cf3ef67128d6bd1a09ef6f7e70a60e7c39f67e36d1a178fcb30bb38c'
  name 'Jumpcut'
  homepage 'http://jumpcut.sourceforge.net/'
  license :mit

  app 'Jumpcut.app'
end

cask 'onionshare' do
  version '2.2'
  sha256 '0a14978214419639e1265754fb9e8f8eaff0e43fed48deadd7ec46e0be54a7ea'

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom'
  name 'OnionShare'
  homepage 'https://onionshare.org/'

  pkg "OnionShare-#{version}.pkg"

  uninstall pkgutil: 'com.micahflee.onionshare'
end

cask 'onionshare' do
  version '2.0'
  sha256 '117f7373b3e23b6ad8a1f0105cbe81d467fedb9dcce89baf59ffd2c851903710'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare-#{version.major}.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom'
  name 'OnionShare'
  homepage 'https://onionshare.org/'

  pkg "OnionShare-#{version.major}.pkg"

  uninstall pkgutil: 'com.micahflee.onionshare'
end

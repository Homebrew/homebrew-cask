cask 'onionshare' do
  version '2.1'
  sha256 '5f1d861eeb1422f592b388b200286704c9d94288a20c146164ebed57fef6b077'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version}/OnionShare-#{version}.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom'
  name 'OnionShare'
  homepage 'https://onionshare.org/'

  pkg "OnionShare-#{version}.pkg"

  uninstall pkgutil: 'com.micahflee.onionshare'
end

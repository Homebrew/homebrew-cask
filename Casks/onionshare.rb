cask 'onionshare' do
  version '2.0,2'
  sha256 '6d748022b28ae0ae105ad595fa5d6428d7ce9e9882bc8808951f9870499519a2'

  # github.com/micahflee/onionshare was verified as official when first introduced to the cask
  url "https://github.com/micahflee/onionshare/releases/download/v#{version.before_comma}/OnionShare-#{version.after_comma}.pkg"
  appcast 'https://github.com/micahflee/onionshare/releases.atom'
  name 'OnionShare'
  homepage 'https://onionshare.org/'

  pkg "OnionShare-#{version.after_comma}.pkg"

  uninstall pkgutil: 'com.micahflee.onionshare'
end

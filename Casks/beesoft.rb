cask 'beesoft' do
  version '3.14.0'
  sha256 'ed4e22a482d42a7b732040e281e57faae7df949087d8326ca228cfdf8e6c2183'

  url "https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT-#{version}/Mac-BEESOFT-#{version}-stable.pkg"
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'

  pkg "Mac-BEESOFT-#{version}-stable.pkg"

  uninstall pkgutil: 'com.beeerycreative.beesoft'
end

cask 'easytether' do
  version :latest
  sha256 :no_check

  url 'http://www.mobile-stream.com/beta/easytether.dmg'
  name 'EasyTether'
  homepage 'http://www.mobile-stream.com/easytether/'
  license :commercial

  pkg 'EasyTetherUSBEthernet.pkg'

  uninstall pkgutil: 'com.mobile-stream.pkg.EasyTether'
end

cask 'easytether' do
  version :latest
  sha256 :no_check

  url 'http://www.mobile-stream.com/beta/darwin/easytether-yosemite-b12.pkg'
  name 'EasyTether'
  homepage 'http://www.mobile-stream.com/easytether/'

  depends_on macos: '>= :yosemite'

  pkg 'easytether-yosemite-b12.pkg'

  uninstall pkgutil:   'com.mobile-stream.pkg.EasyTether',
            launchctl: 'com.mobile-stream.easytether-usb'
end

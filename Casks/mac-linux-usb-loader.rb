cask :v1 => 'mac-linux-usb-loader' do
  version '3.0.1'
  sha256 'e3414a390a69d217bdc0583b34dd6212139f7ba23ac0f54986b1a41a82702a08'

  url 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip'
  name 'Mac Linux USB Loader'
  homepage 'http://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

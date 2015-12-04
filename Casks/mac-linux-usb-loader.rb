cask :v1 => 'mac-linux-usb-loader' do
  version '3.2'
  sha256 '3448f9eeac1ec8c68d172f0943014c0fe478359584bcd71c88986fcd0f830514'

  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

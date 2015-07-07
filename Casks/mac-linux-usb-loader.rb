cask :v1 => 'mac-linux-usb-loader' do
  version '3.0.2'
  sha256 'd122b24db9f6cf35ea1ea7d260123ca4c123f2191a4b20a8c3639d9aacd6d0e8'

  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

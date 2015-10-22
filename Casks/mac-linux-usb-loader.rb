cask :v1 => 'mac-linux-usb-loader' do
  version '3.1'
  sha256 'a47d3112c5d8426bdf2b9f519309bd85a9e7cb2bf5c3bf3e4d3c809f51b3b13a'

  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

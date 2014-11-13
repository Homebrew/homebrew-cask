class MacLinuxUsbLoader < Cask
  version '2.0.2'
  sha256 :no_check

  url 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v2.0.2/Mac.Linux.USB.Loader.zip'
  appcast 'http://sevenbits.github.io/appcasts/mlul.xml'
  homepage 'http://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

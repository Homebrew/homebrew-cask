cask :v1 => 'mac-linux-usb-loader' do
  version :latest
  sha256 :no_check

  url 'https://sevenbits.github.io/downloads/Mac-Linux-USB-Loader.zip'
  appcast 'http://sevenbits.github.io/appcasts/mlul.xml'
  homepage 'http://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :oss

  app 'Mac Linux USB Loader.app'
end

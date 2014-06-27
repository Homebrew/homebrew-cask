class MacLinuxUsbLoader < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://sevenbits.github.io/downloads/Mac-Linux-USB-Loader.zip'
  appcast 'http://sevenbits.github.io/appcasts/mlul.xml'
  homepage 'http://sevenbits.github.io/Mac-Linux-USB-Loader/'

  link 'Mac Linux USB Loader.app'
end

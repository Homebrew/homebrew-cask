cask 'mac-linux-usb-loader' do
  version '3.2.2'
  sha256 '58abea07ed49c03649a3430c9aed7b3f8f496ed4f01e06d72e05af9968181a40'

  # github.com/SevenBits/Mac-Linux-USB-Loader was verified as official when first introduced to the cask
  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom',
          checkpoint: '2f828e4edbab5a5814f8e4e7be45c68ded9ed0ea9316c362830ff96d647647b2'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'

  app 'Mac Linux USB Loader.app'
end

cask 'mac-linux-usb-loader' do
  version '3.2.2'
  sha256 '58abea07ed49c03649a3430c9aed7b3f8f496ed4f01e06d72e05af9968181a40'

  # github.com/SevenBits/Mac-Linux-USB-Loader was verified as official when first introduced to the cask
  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom',
          checkpoint: '5662637e7878eb6b37802f2226a2a71ddd0b82c1b1eab7158adebad8f20809f3'
  name 'Mac Linux USB Loader'
  homepage 'https://www.sevenbits.io/mlul/'

  app 'Mac Linux USB Loader.app'
end

cask 'mac-linux-usb-loader' do
  version '3.2'
  sha256 '3448f9eeac1ec8c68d172f0943014c0fe478359584bcd71c88986fcd0f830514'

  # github.com/SevenBits/Mac-Linux-USB-Loader was verified as official when first introduced to the cask
  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom',
          checkpoint: 'addb377ff01e0526a5167d297fc8d98ea52f8108d421b4f4cbc84f980d53f9d3'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

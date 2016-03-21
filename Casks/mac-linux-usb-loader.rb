cask 'mac-linux-usb-loader' do
  version '3.2.1'
  sha256 '2737e1757e86a1a618c2e6af3f5fae9b07ab00f70fe5e12d30bb4c8ff54c8946'

  # github.com/SevenBits/Mac-Linux-USB-Loader was verified as official when first introduced to the cask
  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom',
          checkpoint: '2d602d2daeae4f879366ea3dcb0622670d53f6d6b37e0c6f92095d23c6853404'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

cask 'mac-linux-usb-loader' do
  version '3.2.2'
  sha256 '58abea07ed49c03649a3430c9aed7b3f8f496ed4f01e06d72e05af9968181a40'

  # github.com/SevenBits/Mac-Linux-USB-Loader was verified as official when first introduced to the cask
  url "https://github.com/SevenBits/Mac-Linux-USB-Loader/releases/download/v#{version}/Mac.Linux.USB.Loader.zip"
  appcast 'https://github.com/SevenBits/Mac-Linux-USB-Loader/releases.atom',
          checkpoint: '096f9376cf6d7c78f599d86f29e5a9d5e99ff4505a99082056180ea5e6fadf36'
  name 'Mac Linux USB Loader'
  homepage 'https://sevenbits.github.io/Mac-Linux-USB-Loader/'
  license :bsd

  app 'Mac Linux USB Loader.app'
end

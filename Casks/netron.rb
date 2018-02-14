cask 'netron' do
  version '1.4.7'
  sha256 'a7b5d58825943b98c249615ffbbe6ee709e182df954ad2efb5f14db2f38531d5'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'c0e63ab0e36f462ad1b5af5193f4c7669d94f6fb5eea45c4a2edde723b258796'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

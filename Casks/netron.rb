cask 'netron' do
  version '1.8.8'
  sha256 '0c813d8739af9206728a1c680bb7e04cf02a49dd3707b9e06545d104574f5d06'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

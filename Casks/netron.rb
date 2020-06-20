cask 'netron' do
  version '4.3.4'
  sha256 '8ca665395ee4a44bd5756c9d307ad09e7aa80741a1f5d5687aa7843da8a2db4f'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

cask 'ariang' do
  version '1.1.4'
  sha256 '7b43201e92160a334864b47970a3dc69f4b8c5b6c04b20633296e26617e40e20'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

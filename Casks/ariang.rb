cask 'ariang' do
  version '1.1.3'
  sha256 'cf3d0f40965dcab93d7b00235a543825115a07e2938d207080a9c28befceac36'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

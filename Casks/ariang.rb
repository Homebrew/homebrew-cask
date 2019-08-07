cask 'ariang' do
  version '1.1.2'
  sha256 '184cbcb5be0a6a9bba3493ec841d75277ed85347c2722d8980f8f18da19c4aba'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

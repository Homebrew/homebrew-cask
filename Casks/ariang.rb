cask 'ariang' do
  version '1.1.0'
  sha256 'e6d0e8ec1b40fcc18aa327c706f77e82a4628496b922df420bd33a59f6ed92f7'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

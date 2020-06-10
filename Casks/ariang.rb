cask 'ariang' do
  version '1.1.6'
  sha256 'ae75941cb33b9570ada6494d2057a7a2aeed31c81bacb8d8a212df39b5229fbb'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

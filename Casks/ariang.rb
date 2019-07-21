cask 'ariang' do
  version '1.1.1'
  sha256 '4e354fa76ce275297b506f2092b8ae156d1bbb3bc4a418ac6e0b60e5514f5685'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

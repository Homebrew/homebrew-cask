cask 'ariang' do
  version '1.1.5'
  sha256 '4512bc5276c3bb53a1bf4c5707f6e95c533c1db93352362c686e3e6fa282530a'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

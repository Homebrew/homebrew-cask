cask 'ariang' do
  version '1.0.3'
  sha256 'bfc954f074198021c79d09176b250d7346ca7ff36754e6eb2dd449748f56a198'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg Native.app'
end

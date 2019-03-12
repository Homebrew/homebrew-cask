cask 'ariang' do
  version '1.0.0'
  sha256 '0202ee9560d48d42882e45fdefcb8d51cc14d8e3edc5ec23334ba1653797ed9a'

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg-#{version}.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://github.com/mayswind/AriaNg-Native'

  app 'AriaNg.app'
end

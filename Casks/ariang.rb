cask 'ariang' do
  version '1.0.0'
  sha256 '0202ee9560d48d42882e45fdefcb8d51cc14d8e3edc5ec23334ba1653797ed9a'

  # github.com/mayswind/AriaNg-Native was verified as official when first introduced to the cask
  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg-#{version}.dmg"
  appcast 'https://github.com/mayswind/AriaNg-Native/releases.atom'
  name 'AriaNg Native'
  homepage 'https://ariang.mayswind.net/'

  app 'AriaNg.app'
end

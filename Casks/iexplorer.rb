cask 'iexplorer' do
  version '3.9.12.0'
  sha256 '1f2b2673fefc68d7c6b688064a9be2e422b9a8d763110fe457390b75c683a3b3'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '32e405c41cba17c409278a142f0afbf86daf9b0ced5ec803e9b05eb99a6b91ee'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end

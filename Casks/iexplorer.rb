cask 'iexplorer' do
  version '4.1.17'
  sha256 'e7e2719a10e51e3fa7b257cc62bdd3a6eb0f5b973069478dcbb9ef0d00a21557'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

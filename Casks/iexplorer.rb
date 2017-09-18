cask 'iexplorer' do
  version '4.1.3'
  sha256 'fb8a4f77786ad99bfda5dd1c97d5b77e5ef626eaf2fd8241e827c53793664467'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

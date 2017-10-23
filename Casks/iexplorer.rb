cask 'iexplorer' do
  version '4.1.5'
  sha256 '8bea06b1c71b9ec7aeec7bebe3a1982cc6e9d8f2d18c6aafd910e1de98cdd47e'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

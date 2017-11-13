cask 'iexplorer' do
  version '4.1.7'
  sha256 '49f24732e1b9bd3560aa372f40d55614b5a8d2156f09334f4e98d6a2c947bc13'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

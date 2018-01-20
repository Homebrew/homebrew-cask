cask 'iexplorer' do
  version '4.1.13'
  sha256 '654376dbd7232bdf2ad3f50fef7d1ce8e174d799da869d66dc809986f9d3b7e0'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

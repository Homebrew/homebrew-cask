cask 'iexplorer' do
  version '4.2.3'
  sha256 'bf4e41861f0dc0cdffb07d3369c37e422b3572602e35d4e7fb5ee8cea6fec803'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

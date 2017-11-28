cask 'iexplorer' do
  version '4.1.11'
  sha256 '6f0d12c921ed442eaa614ab859916ea84feefdcd2199e0a6734dd21a4cae80b2'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

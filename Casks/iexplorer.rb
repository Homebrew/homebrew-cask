cask 'iexplorer' do
  version '4.1.15'
  sha256 '43e34651ef94bdb2a3eac3a68ce9b1388d47c4860a1590eb78e6a08171a669ac'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

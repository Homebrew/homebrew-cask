cask 'synfigstudio' do
  version '1.2.2-20180914'
  sha256 '4b914173208950caddfeea16fc02ac7497f5f19a9af1ad5b291172acc8b61aac'

  url "https://downloads.synfig.org/stable/SynfigStudio-#{version}.dmg"
  appcast 'https://downloads.synfig.org/?dir=stable'
  name 'Synfig Studio'
  homepage 'https://synfig.org/'

  app 'SynfigStudio.app'

  zap trash: '~/Library/Synfig'
end

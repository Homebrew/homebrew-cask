cask 'synfigstudio' do
  version '1.2.2,20180914'
  sha256 '4b914173208950caddfeea16fc02ac7497f5f19a9af1ad5b291172acc8b61aac'

  # github.com/synfig/synfig/ was verified as official when first introduced to the cask
  url "https://github.com/synfig/synfig/releases/download/v#{version.before_comma}/SynfigStudio-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/synfig/synfig/releases.atom'
  name 'Synfig Studio'
  homepage 'https://synfig.org/'

  app 'SynfigStudio.app'

  zap trash: '~/Library/Synfig'
end

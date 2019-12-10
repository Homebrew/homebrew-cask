cask 'quodlibet' do
  version '4.2.1'
  sha256 '83df46eae3b7dd9d2b2e4c3ce659f4d3dff2f2a9a38dd3e6bf18b7fed1edbea3'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/QuodLibet-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom'
  name 'Quod Libet'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'QuodLibet.app'

  zap trash: [
               '~/Library/Preferences/io.github.quodlibet.quodlibet.plist',
               '~/Library/Saved Application State/io.github.quodlibet.quodlibet.savedState',
               '~/.quodlibet',
             ]
end

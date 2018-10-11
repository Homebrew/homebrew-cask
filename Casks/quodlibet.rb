cask 'quodlibet' do
  version '4.1.0'
  sha256 'e4605153e17727ba413339616115c159d53dfca7920a295670f72e58bd9e762e'

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

cask 'quodlibet' do
  version '4.2.0'
  sha256 'd0ce491acdd0828c07746a6239b9bb63b3876e499e8b24bca73a024e19b34558'

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

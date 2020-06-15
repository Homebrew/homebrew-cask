cask 'mgba' do
  version '0.8.2'
  sha256 '1065a797d9a6d1c58b2dad11a2fc5921c49f869985e5694e6bf615b116c36cee'

  # github.com/mgba-emu/mgba/ was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version}/mGBA-#{version}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version}-osx/Applications/mGBA.app"

  zap trash: [
               '~/Library/Preferences/com.endrift.mgba-qt.plist',
               '~/Library/Saved Application State/com.endrift.mgba-qt.savedState',
             ]
end

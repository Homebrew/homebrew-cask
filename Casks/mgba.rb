cask 'mgba' do
  version '0.7.1'
  sha256 '6f77a9feaa4be0ce8ae5bb9e4490e1c3671708729f52fe2d2577fd45e6b2929c'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
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

cask 'mgba' do
  version '0.8.1'
  sha256 '867b6d588351505ffae9e90ee75373fc7044a08dbb2c40ada9b91d12e255b295'

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

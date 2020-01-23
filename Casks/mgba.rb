cask 'mgba' do
  version '0.8.0'
  sha256 'c3322c3592e932b14612f7635f585fbbd72157bfa93d30717d3967f95fdc1aec'

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

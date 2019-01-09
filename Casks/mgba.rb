cask 'mgba' do
  version '0.6.3'
  sha256 '4a86bb19c5e7027727903f7bcb1678e8a7e6dff4219c044e03349cc2d17ae5f3'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version}/mGBA-#{version}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version}-osx/mGBA.app"

  zap trash: [
               '~/Library/Preferences/com.endrift.mgba-qt.plist',
               '~/Library/Saved Application State/com.endrift.mgba-qt.savedState',
             ]
end

cask 'lepton' do
  version '1.9.0'
  sha256 '6accf64049c225f2b8102c83c71302f21b778decb39c0614fdad00109a6cbf42'

  # github.com/hackjutsu/Lepton/ was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}.dmg"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom'
  name 'Lepton'
  homepage 'https://hackjutsu.com/Lepton/'

  app 'Lepton.app'

  zap trash: [
               '~/Library/Application Support/Lepton',
               '~/Library/Preferences/com.cosmox.lepton.helper.plist',
               '~/Library/Preferences/com.cosmox.lepton.plist',
               '~/Library/Saved Application State/com.cosmox.lepton.savedState',
             ]
end

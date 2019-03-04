cask 'lepton' do
  version '1.7.3'
  sha256 '60754e75990ea312f1cec036171a610e37ef5ddc48cb38761924894780ab8929'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
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

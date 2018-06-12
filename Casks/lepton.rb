cask 'lepton' do
  version '1.6.2'
  sha256 '0a83b7b90bec91756e4c981fe06d3609d24220d68c36bf3118ce44bd2dc03deb'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'

  zap trash: [
               '~/Library/Application Support/Lepton',
               '~/Library/Preferences/com.cosmox.lepton.helper.plist',
               '~/Library/Preferences/com.cosmox.lepton.plist',
               '~/Library/Saved Application State/com.cosmox.lepton.savedState',
             ]
end

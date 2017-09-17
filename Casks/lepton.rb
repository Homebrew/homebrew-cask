cask 'lepton' do
  version '1.4.2'
  sha256 'a349b99911207d602bf15cf1dc70e25d53327a9224f666a06e67dfc6313aacaf'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '8f2d23a548abf7334aed2b57df36bd6063c2335849ae483e39cbac491348c05c'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'

  zap delete: '~/Library/Saved Application State/com.cosmox.lepton.savedState',
      trash:  [
                '~/Library/Application Support/Lepton',
                '~/Library/Preferences/com.cosmox.lepton.helper.plist',
                '~/Library/Preferences/com.cosmox.lepton.plist',
              ]
end

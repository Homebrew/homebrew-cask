cask 'lepton' do
  version '1.6.0'
  sha256 '665cc4e1ebca677cc9f5a8c2f97bc4550265fe31f77b8831ce4c767caa60c3e9'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '806bdeff91f5ad9e53abad5e4996637bbb6a16101dfe2bd142fd28a78bd364a3'
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

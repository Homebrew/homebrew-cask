cask 'lepton' do
  version '1.4.0'
  sha256 '2b9bb68dc03951641dc5e1dad78e51bd8695f9b8a2e6029327dc9c7679d17fa6'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '88a670eba018a3308f3c157e3ec544bf44db6fa2b8c4b65b289c064af3b3f500'
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

cask 'lepton' do
  version '1.1.1'
  sha256 '62933b11f25e4c0a3c1143acc407307dcfcf75d63f5bf79144bc5cd9fbc60600'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: 'fdfd0de510bea5e9899c59a16ef6581dc3848606d249974c108da2a2a51bd407'
  name 'lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end

cask 'losslesscut' do
  version '1.6.0'
  sha256 '8624ff9bc07aa534ded12445a21d066500a64738ccfcfba83ce9f34bdef36200'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: 'e41c4175f58c355299c08313177137b3b14ce347f7db962d6f3e75760562b495'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

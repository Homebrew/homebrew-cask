cask 'losslesscut' do
  version '3.2.0'
  sha256 '65d20726e817c1f0e95c3ce00a4c8d5ec8a8fa95b2de78363982e4235c8df52d'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-mac.dmg"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom'
  name 'LosslessCut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut.app'

  zap trash: [
               '~/Library/Application Support/LosslessCut',
               '~/Library/Logs/LosslessCut',
             ]
end

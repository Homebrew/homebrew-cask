cask 'losslesscut' do
  version '2.6.2'
  sha256 'd06248b1071fc5e44ac1d95beacd5a82454c1f1732f946acf097ef8155e808d9'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-#{version}.dmg"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom'
  name 'LosslessCut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut.app'

  zap trash: [
               '~/Library/Application Support/LosslessCut',
               '~/Library/Logs/LosslessCut',
             ]
end

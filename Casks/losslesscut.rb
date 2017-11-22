cask 'losslesscut' do
  version '1.9.0'
  sha256 '4a67572e031b6f240718160df6c5e942f7b8187cd76b79aeaf90447528aca40a'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: '3a0d1ac2fe29edb13f3423762425921f124e03af7e7b51a9c79338eba3289d38'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

cask 'losslesscut' do
  version '1.5.0'
  sha256 '98f972bd24c78142d847e5beb2529bcd0496c8c79ee919696329bf5bb2fbcb73'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: '4ef5a96c89e9f8f77a1c7902b4c3602bb3d96c06c32e4e66c093f1251ef46726'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

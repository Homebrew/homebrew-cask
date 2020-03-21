cask 'losslesscut' do
  version '3.17.0'
  sha256 'e4f9c20e27dec7b82e21a77e24c704bb79824c8bf02a639b7f608b26f369037c'

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

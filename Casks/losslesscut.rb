cask 'losslesscut' do
  version '3.12.0'
  sha256 '95851aea6c37a0f9d6534883966221415bcf9fddd077d2e6de62ce8d9e418c34'

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

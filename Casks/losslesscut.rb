cask 'losslesscut' do
  version '3.17.4'
  sha256 'b193f151d41a81154f3cbb61ef3aa25e3c6db9c4ee22148bbb74575b5f8fb0b8'

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

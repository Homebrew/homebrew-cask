cask 'losslesscut' do
  version '3.23.7'
  sha256 '8be9187266ec5c964f8258a4f3b902c0bd8c486f2cd52668d8a1215c812fefec'

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

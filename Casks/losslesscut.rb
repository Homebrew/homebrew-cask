cask 'losslesscut' do
  version '1.7.0'
  sha256 '4bec87f6e63c003b889a714a2c2e01598a3614dd7779ff2544e5466d52cd8244'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: 'c7a899db1ecbdc4e133c2f69253b6eeebbb632c1c5822b50aad27d7af6749210'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

cask 'loslesscut' do
  version '1.3.0'
  sha256 'd44affab76fc4538a7968207742a2324a2cffb60b14360519650b0989b4049fb'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

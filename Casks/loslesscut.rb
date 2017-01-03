cask 'loslesscut' do
  version '1.3.0'
  sha256 'd44affab76fc4538a7968207742a2324a2cffb60b14360519650b0989b4049fb'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: '6a2fdf0e31250c613c097f5581f66be4e2c192e9a82425efffc0d86d135cdd8f'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

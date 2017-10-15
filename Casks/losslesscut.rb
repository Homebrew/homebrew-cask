cask 'losslesscut' do
  version '1.8.0'
  sha256 '16446cfbe44ebcdc769dd3ce72211a7054bdaf2e2b48ac35c727bd3940c049b9'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: '36635a3858f53da649718b2f21c033c7124310e5d50823e862e2588fd2b7019c'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

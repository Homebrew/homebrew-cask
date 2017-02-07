cask 'losslesscut' do
  version '1.4.0'
  sha256 'f721a32381105f178f38c2daedb094244f4a72ba5ff5e84cb2a7e6be598fbb72'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: '7cb2aaac4723bba159f40fa4590daba8a1ff48ffe8832a5185d445d03654c722'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'
end

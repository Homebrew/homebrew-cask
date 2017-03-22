cask 'hype' do
  version '3.6.1'
  sha256 '5f8437a60234137fde4a1a22039f648175d26e29c858abc8ab6c75dde9e1e905'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: 'bd7c36fbc7696f1dd57d2121e6b0d6d051d811a0693c0c92f170f55b04201b00'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  app "Hype #{version.major}.app"
end

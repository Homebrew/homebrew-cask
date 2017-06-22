cask 'beamer' do
  version '3.3'
  sha256 '46ec78ca4ce0bf47a6026e3a13149083764f0b05e157a6d268a3b3b01862641e'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml",
          checkpoint: '766f15866691fd2c6329a2888fbde950f14a1357c083a52e2406948840e7e761'
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end

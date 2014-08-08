class Iexplorer < Cask
  version '3.4.0.3'
  sha256 'ed316572e036aaf9488cdb279b38b0f8bdc5dc5633e95ff975cda5253462986f'

  homepage 'http://www.macroplant.com/'
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml'
  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"

  link 'iExplorer.app'
end

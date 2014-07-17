class Iexplorer < Cask
  version '3.3.2.1'
  sha256 '0fbf99dc8ab5ceb1d7db1fc2d0f0c7a87b5d4221cf6d73a8503eb095ad85ea1e'

  homepage 'http://www.macroplant.com/'
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml'
  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"

  link 'iExplorer.app'
end

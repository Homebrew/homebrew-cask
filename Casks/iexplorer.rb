class Iexplorer < Cask
  version '3.4.0.1'
  sha256 'dd9af7e03bcdefbeb76c6e03f764e8ba089dee5930f08169fd4901f51af514fa'

  homepage 'http://www.macroplant.com/'
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml'
  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"

  link 'iExplorer.app'
end

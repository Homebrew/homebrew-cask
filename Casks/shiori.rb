class Shiori < Cask
  version '1.0.2'
  sha256 'c832edc2762fdaadc80bfe042ee6f7bd128955e3d7b27bdc5baf5806a0c8a719'

  url "http://aki-null.net/shiori/release/Shiori_#{version}.zip"
  appcast 'http://aki-null.net/shiori/appcast.xml'
  homepage 'http://aki-null.net/shiori/'

  app 'Shiori.app'
end

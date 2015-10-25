cask :v1 => 'spillo' do
  version '1.6.1'
  sha256 '705ac87070a964ca0e282681fd70947b18e1ce777e9fead1bc95f9d4be299fbd'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  name 'Spillo'
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          :sha256 => 'a42ee543950ca5bccc862f3fd492a33456fd0dff44dfc70de1ce13da7e894144'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end

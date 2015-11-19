cask :v1 => 'spillo' do
  version '1.6.2'
  sha256 '65937ac2f298cd59fda46d000fd41c6a11be2afb91a8863cb9dffbef29167c6b'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  name 'Spillo'
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          :sha256 => 'a42ee543950ca5bccc862f3fd492a33456fd0dff44dfc70de1ce13da7e894144'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end

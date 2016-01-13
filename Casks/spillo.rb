cask 'spillo' do
  version '1.6.4'
  sha256 '6c7dfd1f09b3e97b1c3d7ddcab4c5aac4b1c79a6771fff56af88a4d3d056f886'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          :sha256 => '9dedb220bef5f4812fb74247ebbe2e71a6e5b375e131345cb9ef90bae777c529'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end

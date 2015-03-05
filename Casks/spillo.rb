cask :v1 => 'spillo' do
  version '1.3'
  sha256 '3be890efc0453c6759dadabfd13c6991b1a99d7211c0a0971b717c684a7ef5a0'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Spillo.app'
end

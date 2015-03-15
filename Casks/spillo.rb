cask :v1 => 'spillo' do
  version '1.5.2'
  sha256 '52e962ddd574d66a3607555001f07b2370016d7f2fb2ebeefa4118acf51a319f'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end

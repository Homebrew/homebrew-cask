cask 'pencil' do
  version '3.0.2'
  sha256 '7cfaacb55509b54a134403cb3026724bb55d19f48d5f76690ba4e62c7f31dd0d'

  url "http://pencil.evolus.vn/dl/V#{version}/Pencil-#{version}.dmg"
  appcast 'https://github.com/evolus/pencil/releases.atom',
          checkpoint: 'f5fb797cc84fd5b99a4d4cd9e7fa5f5fc085d0303a649c38b78c3696b77b47bf'
  name 'Pencil'
  homepage 'https://pencil.evolus.vn/'

  app 'Pencil.app'
end

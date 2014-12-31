cask :v1 => 'createuserpkg' do
  version '1.2.4'
  sha256 '4bac91af9d8fb2e34c036964c6f9bf49a8f19f8e994b30e2900a0ddbebef246f'

  url "http://magervalp.github.io/CreateUserPkg/Distributions/CreateUserPkg-#{version}.dmg"
  homepage 'http://magervalp.github.io/CreateUserPkg/'
  license :apache

  app 'CreateUserPkg.app'
end

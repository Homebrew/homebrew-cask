cask 'createuserpkg' do
  version '1.2.4'
  sha256 '4bac91af9d8fb2e34c036964c6f9bf49a8f19f8e994b30e2900a0ddbebef246f'

  url "https://magervalp.github.io/CreateUserPkg/Distributions/CreateUserPkg-#{version}.dmg"
  appcast 'https://github.com/MagerValp/CreateUserPkg/releases.atom',
          checkpoint: 'e97f696d0d6e39e65357a56b62e91ae4fce4704097eb7a57659858a29c2c2fdf'
  name 'CreateUserPkg'
  homepage 'https://magervalp.github.io/CreateUserPkg/'
  license :apache

  app 'CreateUserPkg.app'
end

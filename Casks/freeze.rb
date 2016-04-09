cask 'freeze' do
  version '1.5'
  sha256 '37d8e31e0023e879eeb1fc2a62baaab47fd5e9c8e4e3645c362fa6b706899a73'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: 'a2593a7d444452ddf468b393c8e0bfc66c63b3d9d6d639ce1eead59d2966435c'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end

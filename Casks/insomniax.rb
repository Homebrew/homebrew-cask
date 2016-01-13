cask 'insomniax' do
  version '2.1.8'
  sha256 'abbf4b27e86da934042a1dcedd339ffb59e16c4aa8e0c0d44534533be42e3efb'

  url "http://insomniax.semaja2.net/InsomniaX-#{version}.tgz"
  appcast 'http://insomniax.semaja2.net/profile/profileInfo.php',
          :checkpoint => 'ee4c8bdae6cc13851531db7c39fba1ab1ecd75b540daaf84192256abbf530a5d'
  name 'InsomniaX'
  homepage 'https://semaja2.net/projects/insomniaxinfo/'
  license :gratis

  app 'InsomniaX.app'
end

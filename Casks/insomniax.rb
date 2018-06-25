cask 'insomniax' do
  version '2.1.8'
  sha256 'abbf4b27e86da934042a1dcedd339ffb59e16c4aa8e0c0d44534533be42e3efb'

  url "http://insomniax.semaja2.net/InsomniaX-#{version}.tgz"
  appcast 'http://insomniax.semaja2.net/profile/profileInfo.php'
  name 'InsomniaX'
  homepage 'http://semaja2.net/ye-ol-projects/insomniaxinfo/'

  app 'InsomniaX.app'
end

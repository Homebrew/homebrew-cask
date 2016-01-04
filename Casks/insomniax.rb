cask 'insomniax' do
  version '2.1.8'
  sha256 'abbf4b27e86da934042a1dcedd339ffb59e16c4aa8e0c0d44534533be42e3efb'

  url "http://insomniax.semaja2.net/InsomniaX-#{version}.tgz"
  appcast 'http://insomniax.semaja2.net/profile/profileInfo.php',
          :sha256 => '834f8bedbd0037f7e65a47c62939f2073f6b1efc5014ddd3f3d6e37650c246cb'
  name 'InsomniaX'
  homepage 'https://semaja2.net/projects/insomniaxinfo/'
  license :gratis

  app 'InsomniaX.app'
end

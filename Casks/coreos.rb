cask 'coreos' do
  version '1.3.1'
  sha256 'afa55cf4c5bce6d7def68dce34ed79c1b9cdaf04f3155801bf6f3c0f29c3e98b'

  url "https://github.com/TheNewNormal/coreos-osx/releases/download/v#{version}/CoreOS_v#{version}.dmg"
  appcast 'https://github.com/TheNewNormal/coreos-osx/releases.atom',
          checkpoint: '970c2b66e74bfb748f9bad28b60bdf7f350932004ed90ff811e1ad27cba5ea75'
  name 'CoreOS VM'
  homepage 'https://github.com/TheNewNormal/coreos-osx'
  license :apache

  app 'CoreOS.app'

  zap delete: '~/coreos-osx'
end

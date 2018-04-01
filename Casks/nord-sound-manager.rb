cask 'nord-sound-manager' do
  version '6.90'
  sha256 'ad7c5731d6bb06730fc56cabb4ab1f0b35e2ab571f1f5d0dab307b2250f63ae3'

  url "http://www.nordkeyboards.com/sites/default/files/files/downloads/software/nord-sound-manager/Nord%20Sound%20Manager%20v#{version}.dmg"
  name 'Nord Sound Manager'
  homepage 'http://www.nordkeyboards.com/downloads/software-tools/nord-sound-manager'

  app "Nord Sound Manager v#{version}.app"
end

cask 'ganache' do
  version '1.2.1'
  sha256 'cb03072aeea228ebd945dda30836cd4d38cb951cf94a72064255c6e075f36c58'

  # github.com/trufflesuite/ganache was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'http://truffleframework.com/ganache/'

  app 'Ganache.app'
end

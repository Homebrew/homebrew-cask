cask 'retro-virtual-machine' do
  version '1.1.6'
  sha256 '4025387610cdc8bca78b5ac3513001fe2ef7ab14d6019472b14653e89bb58afa'

  url "http://www.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  appcast 'http://www.retrovirtualmachine.org/en/changelog',
          checkpoint: 'bcb426761bc837fd798472cdd5de38444082b1a64f42708eda1fc37e369fb9f3'
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org/'

  app 'Retro Virtual Machine.app'
end

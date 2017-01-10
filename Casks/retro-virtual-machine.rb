cask 'retro-virtual-machine' do
  version '1.1.4'
  sha256 '58e796a910a0f4079bd0189d92eced6b137ab55fe83ceff8e5b1fa587373031f'

  url "http://www.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org/'

  app 'Retro Virtual Machine.app'
end

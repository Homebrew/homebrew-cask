cask 'retro-virtual-machine' do
  version '1.1.8'
  sha256 '49ea57688d0afbe63cc886606067f400c0e827e60db9c781e2f8c93cc993d139'

  url "http://static1.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  appcast 'http://www.retrovirtualmachine.org/en/changelog'
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org/'

  app 'Retro Virtual Machine.app'
end

cask 'retro-virtual-machine' do
  version '1.1.6'
  sha256 'f67c62fb278c4df6d4323387eb22cf831848ce256858e1c6ee65e04798ae8776'

  url "http://www.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  appcast 'http://www.retrovirtualmachine.org/en/changelog',
          checkpoint: 'cc438ecb3a8552a76ce38a305546aa6ce8a733924c96f3b9a14c1e28b49a2ab9'
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org/'

  app 'Retro Virtual Machine.app'
end

cask 'retro-virtual-machine' do
  version '1.1.5'
  sha256 '2c3e29c5872136a82bbde9212b96890066f4f9534d4c9082e60644490d01b67d'

  url "http://www.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  appcast 'http://www.retrovirtualmachine.org/en/changelog',
          checkpoint: '942225c5def8696527c10688753d75664362a279cae0a0d3a838163d3a715e29'
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org/'

  app 'Retro Virtual Machine.app'
end

cask 'retro-virtual-machine' do
  version '1.0.1'
  sha256 '2144c713889780fcc1b4f9e994f4466514f9434974c942406f966145adaf899d'

  url "http://www.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org'
  license :gratis

  app 'Retro Virtual Machine.app'
end

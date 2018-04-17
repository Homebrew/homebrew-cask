cask 'mucommander' do
  version '0.9.2'
  sha256 '54486fba723d3d54084414e31337b010c2f28fc4820cefc01cad65e4a5a84744'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom',
          checkpoint: '85dd3667b8c8e365c48aa185a0e2711a7d26f3829a756c06c405c7ae9e9aea8b'
  name 'muCommander'
  homepage 'http://www.mucommander.com/'

  app 'muCommander.app'
end

cask 'mucommander' do
  version '0.9.2'
  sha256 '54486fba723d3d54084414e31337b010c2f28fc4820cefc01cad65e4a5a84744'

  # github.com/mucommander/mucommander was verified as official when first introduced to the cask
  url "https://github.com/mucommander/mucommander/releases/download/#{version}/mucommander-#{version}.dmg"
  appcast 'https://github.com/mucommander/mucommander/releases.atom'
  name 'muCommander'
  homepage 'https://www.mucommander.com/'

  app 'muCommander.app'
end

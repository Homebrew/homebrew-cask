cask 'block-keeper' do
  version '2.1.0'
  sha256 '6db2a4b67190b8d950f894c1c30157433e81e938dd0e4f350fefb323c1bf66bc'

  # github.com/DallasMcNeil/Block-Keeper was verified as official when first introduced to the cask
  url "https://github.com/DallasMcNeil/Block-Keeper/releases/download/v#{version}/Block-Keeper.dmg"
  appcast 'https://github.com/DallasMcNeil/Block-Keeper/releases.atom'
  name 'Block Keeper'
  homepage 'https://dallasmcneil.com/projects/blockkeeper/'

  app 'Block Keeper.app'
end

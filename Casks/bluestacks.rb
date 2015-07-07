cask :v1 => 'bluestacks' do
  version '0.9.21.415611'
  sha256 'dd58a1b7669b8373fec9168d7b3cb99c861f0bdd367e402ecb65027d7009e328'

  url "http://cdn.bluestacks.com/downloads/#{version}/BlueStacksInstaller-#{version}.dmg"
  name 'BlueStacks'
  homepage 'http://www.bluestacks.com/'
  license :closed

  app 'BlueStacks.app'
end

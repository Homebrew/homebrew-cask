cask 'magicavoxel' do
  version '0.99.1-alpha'
  sha256 'a1dac17cc9a8062e29cc7e584d5be1213d4a73df8b94d8ec4b2d737232d3a78f'

  # 192.241.207.218/uploads was verified as official when first introduced to the cask
  url "http://192.241.207.218/uploads/MagicaVoxel-#{version}-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'
  
  # rename folder
  system 'mv /usr/local/Caskroom/magicavoxel/0.99.1-alpha/ /usr/local/Caskroom/magicavoxel/0.99.1-alpha-bak/'
  system 'mkdir /usr/local/Caskroom/magicavoxel/0.99.1-alpha/'
  system 'mv /usr/local/Caskroom/magicavoxel/0.99.1-alpha-bak/ /usr/local/Caskroom/magicavoxel/0.99.1-alpha/MagicaVoxel-0.99.1-alpha-mac/'

  suite "MagicaVoxel-#{version}-mac"
end

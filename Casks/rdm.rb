cask :v1 => 'rdm' do
  version '0.8.0-2535'
  sha256 'fd54a83a648c9bf033b741127ef53eeb754d446266a83cb388c6bab27f3fed6f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*},'')}-rc1/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

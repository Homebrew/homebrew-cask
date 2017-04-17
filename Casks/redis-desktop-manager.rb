cask :v1 => 'rdm' do
  version '0.8.3'
  sha256 '10132a8fcd4d3dc67ddc862ac5f2ef16ba9d5620f57ec9ef906ed9a7c134fd86'

  url "https://github.com/uglide/RedisDesktopManager/releases/download/0.8.3/redis-desktop-manager-0.8.3-2550.dmg"
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

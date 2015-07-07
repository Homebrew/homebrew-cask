cask :v1 => 'rdm' do
  version '0.7.6.8'
  sha256 '7f5bb2ac47c7a01f99a5d3fd7ed1019d7cc9fb6230c617bf2eff9336f0eb8a16'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/0.7.6/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

cask :v1 => 'rdm' do
  version '0.8.1-2547'
  sha256 'd569a58c4a151f463293f220304a0198dbf83fe18e3bd066067e1becc56472a5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*},'')}/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

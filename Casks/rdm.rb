cask :v1 => 'rdm' do
  version '0.8.2-2549'
  sha256 '257e3852ab31ed2abe8f7da7bb844478bc27f32ca31bc09cce82257095d952a1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*},'')}/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

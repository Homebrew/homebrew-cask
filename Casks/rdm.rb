cask :v1 => 'rdm' do
  version '0.8.0-2540'
  sha256 'c9b52b65e11b5a7eb240fdd5741b274cf461fc54a3e32b684e157ec713b69436'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*},'')}-rc4/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

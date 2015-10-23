cask :v1 => 'rdm' do
  version '0.8.0-2544'
  sha256 '40d0e37a3af9084294b8638ba4f1f5a198ac8e77708f4da31754bb96a33bdd83'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*},'')}-release/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

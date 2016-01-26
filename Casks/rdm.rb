cask 'rdm' do
  version '0.8.3-2550'
  sha256 '10132a8fcd4d3dc67ddc862ac5f2ef16ba9d5620f57ec9ef906ed9a7c134fd86'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*}, '')}/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom',
          checkpoint: '55c262996d7b3d7809ae543638792d70b6a1d2d26e817eeffe8a7ed6da3391fe'
  name 'Redis Desktop Manager'
  homepage 'http://redisdesktop.com'
  license :gpl

  app 'rdm.app'
end

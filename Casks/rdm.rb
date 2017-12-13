cask 'rdm' do
  version '0.8.3-2550'
  sha256 '10132a8fcd4d3dc67ddc862ac5f2ef16ba9d5620f57ec9ef906ed9a7c134fd86'

  # github.com/uglide/RedisDesktopManager was verified as official when first introduced to the cask
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.sub(%r{-.*}, '')}/redis-desktop-manager-#{version}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom',
          checkpoint: 'f393b2adb7209c2dc984526e87895f220450050fffd40d8f8f0369943d24953e'
  name 'Redis Desktop Manager'
  homepage 'https://redisdesktop.com/'

  app 'rdm.app'
end

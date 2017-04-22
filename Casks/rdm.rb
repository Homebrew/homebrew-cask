cask 'rdm' do
  version '0.9.0-alpha3,0.9.0.41'
  sha256 '20326d90a21322716eec279458cf1f5dbb5362e67c622b0336ae1abf0e9397b1'

  # github.com/uglide/RedisDesktopManager was verified as official when first introduced to the cask
  url "https://github.com/uglide/RedisDesktopManager/releases/download/#{version.before_comma}/redis-desktop-manager-#{version.after_comma}.dmg"
  appcast 'https://github.com/uglide/RedisDesktopManager/releases.atom',
          checkpoint: '9e78be033c18e17718ea68a6fa832a7a0d38ce835dd42710e39bf8760b669863'
  name 'Redis Desktop Manager'
  homepage 'https://redisdesktop.com/'

  app 'rdm.app'
end

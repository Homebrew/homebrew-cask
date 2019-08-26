cask 'another-redis-desktop-manager' do
  version '1.2.5'
  sha256 'fe1c2c08c1c0972dee58fd4f0876b1bce80ce6ac9d56842e4c34979249f85050'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another.Redis.Desktop.Manager.1.2.5.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another.Redis.Desktop.Manager.app'
end

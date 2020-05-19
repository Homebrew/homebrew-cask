cask 'another-redis-desktop-manager' do
  version '1.3.5'
  sha256 '7da22ee2d677bf9e52bf92478b8c7968abfb97bbcb8033cf4edc81af2b97d997'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another.Redis.Desktop.Manager.#{version}.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another.Redis.Desktop.Manager.app'
end

cask 'another-redis-desktop-manager' do
  version '1.3.1'
  sha256 '201fb3b357fdbe7d5b6fc3a2a2a22b73277e63a42fc904151f54391775ff94b9'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another.Redis.Desktop.Manager.#{version}.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another.Redis.Desktop.Manager.app'
end

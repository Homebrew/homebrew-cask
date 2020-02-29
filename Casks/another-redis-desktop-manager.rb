cask 'another-redis-desktop-manager' do
  version '1.3.0'
  sha256 'aff9116b25933f4d01abdee8d367073f5c7510c99b2b88034fc67a53dfc07b51'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another.Redis.Desktop.Manager.#{version}.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another.Redis.Desktop.Manager.app'
end

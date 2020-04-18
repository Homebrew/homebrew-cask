cask 'another-redis-desktop-manager' do
  version '1.3.4'
  sha256 'b50b0afdabc280c31f5aea81a0b439e9dbea9741a64f3579a44026272566a703'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another.Redis.Desktop.Manager.#{version}.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another.Redis.Desktop.Manager.app'
end

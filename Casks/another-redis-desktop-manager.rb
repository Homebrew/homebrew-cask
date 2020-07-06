cask 'another-redis-desktop-manager' do
  version '1.3.7'
  sha256 'e5a8acdcf8f26c1240430a4702dc0d675d741b227711d33dbff63419673eeca1'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another Redis Desktop Manager.app'
end

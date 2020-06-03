cask 'another-redis-desktop-manager' do
  version '1.3.6'
  sha256 '22f8ca81cb5f19c3eceacf8494191db07709ff93608051a164f52b967430cf0d'

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  appcast 'https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom'
  name 'Another Redis Desktop Manager'
  homepage 'https://github.com/qishibo/AnotherRedisDesktopManager/'

  app 'Another Redis Desktop Manager.app'
end

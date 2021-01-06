cask "another-redis-desktop-manager" do
  version "1.4.0"
  sha256 "151d3c1250d7dda5adc46e4a9b89d0e5462c403c24da5f8fbad82d55ed7f63b9"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  appcast "https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

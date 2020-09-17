cask "another-redis-desktop-manager" do
  version "1.3.8"
  sha256 "22b628d836718abfcaa72bb89261257cdf37e4b146884ef4dcfb2e0ea5de496f"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  appcast "https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

cask "another-redis-desktop-manager" do
  version "1.4.1"
  sha256 "b1a4f2b0b0453e54bb369033e4fec5c0acde3559eeeb708c0c6c41e72b7b6902"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  appcast "https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

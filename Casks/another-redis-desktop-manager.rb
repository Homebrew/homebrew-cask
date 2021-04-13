cask "another-redis-desktop-manager" do
  version "1.4.2"
  sha256 "54bf95f869a039b58af2be0c3e0a3a656c606f2ac6e53984b89eb3e21b60f01b"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

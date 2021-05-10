cask "another-redis-desktop-manager" do
  version "1.4.4"
  sha256 "d8ed1e02b9ce9f20cda4c113c0832427664b4d2705ff4b20f06cb2b8a8843cf8"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

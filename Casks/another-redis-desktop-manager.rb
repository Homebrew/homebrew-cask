cask "another-redis-desktop-manager" do
  version "1.4.8"
  sha256 "ecb6b50ff8d22e96fda124ffe16556f0e002cfbfe44c43f3f4c7a4c0e93001ba"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

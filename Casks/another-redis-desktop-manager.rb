cask "another-redis-desktop-manager" do
  version "1.4.3"
  sha256 "56af157f4a9eef8ec1d34072dfd381a402351a2b706f7489ceb1de471c5adc0e"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

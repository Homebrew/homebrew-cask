cask "another-redis-desktop-manager" do
  version "1.4.5"
  sha256 "b93af8c19ffa44cdbce697034e1a9319b6c031424cf0952a9905e63ea4505ba1"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

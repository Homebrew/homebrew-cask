cask "another-redis-desktop-manager" do
  version "1.3.9"
  sha256 "6c9fa0fd7a08c8e4f4604a99a6d217cc4336050f71f31bd7726c6d68bd14d961"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  appcast "https://github.com/qishibo/AnotherRedisDesktopManager/releases.atom"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

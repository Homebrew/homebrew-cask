cask "another-redis-desktop-manager" do
  version "1.5.1"

  if Hardware::CPU.intel?
    sha256 "fea712bdb336935ac4f00aebcc5005d9c7ffc141cfa8996156df31f72a7571b2"

    url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  else
    sha256 "564d1f534186f97244bb4d4ec667e27f2faf7bc741f01dc8adc905ece541f074"

    url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager-M1-arm64-#{version}.dmg"
  end

  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

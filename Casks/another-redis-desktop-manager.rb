cask "another-redis-desktop-manager" do
  version "1.4.9"

  if Hardware::CPU.intel?
    sha256 "6645823467fd50e62524c968104cdeb79b7416731e454eeb5822731b174528f7"

    url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager.#{version}.dmg"
  else
    sha256 "6018d0993b8abdbb51ced41fc26249780078bf79687a3a3d32a43782aa6edcee"

    url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager-M1-arm64-#{version}.dmg"
  end

  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

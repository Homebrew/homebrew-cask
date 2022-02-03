cask "another-redis-desktop-manager" do
  arch = Hardware::CPU.intel? ? "." : "-M1-arm64-"

  version "1.5.2"

  if Hardware::CPU.intel?
    sha256 "a734bd5c095eeb29863a3d4c05b6d1d2c9d1ba64fab7b2f7007a5eff50b50835"
  else
    sha256 "2c7febc52dea1e860d4ba6ec528e9a8e7516df9f0067cd188c978f479f593334"
  end

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager#{arch}#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  app "Another Redis Desktop Manager.app"
end

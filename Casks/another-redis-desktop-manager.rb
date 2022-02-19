cask "another-redis-desktop-manager" do
  arch = Hardware::CPU.intel? ? "." : "-M1-arm64-"

  version "1.5.2"

  if Hardware::CPU.intel?
    sha256 "a734bd5c095eeb29863a3d4c05b6d1d2c9d1ba64fab7b2f7007a5eff50b50835"
  else
    sha256 "653b977987407b42fd82fb5fe1830583d7d1fbb8bf32b5ae70f3ed96f238fd92"
  end

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager#{arch}#{version}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Another Redis Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/another-redis-desktop-manager",
    "~/Library/Preferences/me.qii404.another-redis-desktop-manager.plist",
  ]
end

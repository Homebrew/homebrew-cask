cask "another-redis-desktop-manager" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "385a5488f3b748ed51f2b13d330669fab1fb23c0a46fd304b8fa0cd2a65f4b76",
         intel: "51cec983ac4e9ea95d003d470603c6a2cf90fff7c45f60cc887fde272173ea02"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager-mac-#{version}-#{arch}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Another Redis Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/another-redis-desktop-manager",
    "~/Library/Preferences/me.qii404.another-redis-desktop-manager.plist",
  ]
end

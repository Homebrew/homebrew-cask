cask "another-redis-desktop-manager" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm:   "017a83750d79cf84530990c3bbe1fe93a2ae5124bb763d3c97932de0d38ac62b",
         intel: "5a9cad3eb52cc56f012362ed82f9694cbea7b8506fd3fad6329b50ba03be0a59"

  url "https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v#{version}/Another-Redis-Desktop-Manager-mac-#{version}-#{arch}.dmg"
  name "Another Redis Desktop Manager"
  desc "Redis desktop manager"
  homepage "https://github.com/qishibo/AnotherRedisDesktopManager/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Another Redis Desktop Manager.app"

  zap trash: [
    "~/Library/Application Support/another-redis-desktop-manager",
    "~/Library/Preferences/me.qii404.another-redis-desktop-manager.plist",
  ]
end

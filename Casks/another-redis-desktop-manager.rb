cask "another-redis-desktop-manager" do
  arch = Hardware::CPU.intel? ? "." : "-M1-arm64-"

  version "1.5.6"

  if Hardware::CPU.intel?
    sha256 "c56835fbb994816af57407ddaade7cbdc2e856357b647cc8ef2178ce3d32a200"
  else
    sha256 "8ca0e8c674b584a56dad4c67752ff0581798dd475a65520f5ece01ba1373ae1c"
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

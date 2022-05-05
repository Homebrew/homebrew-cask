cask "another-redis-desktop-manager" do
  arch = Hardware::CPU.intel? ? "." : "-M1-arm64-"

  version "1.5.5"

  if Hardware::CPU.intel?
    sha256 "b4b5ced319af3a048f3e4fc1e48b6f6186cd2aa2bbd17148faa48350911723aa"
  else
    sha256 "00bf73c9195faaca5f4c27d1be7c7baaa5efe5e4903b07768a8cdd82542b6bc8"
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

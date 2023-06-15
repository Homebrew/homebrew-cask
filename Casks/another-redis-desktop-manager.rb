cask "another-redis-desktop-manager" do
  arch arm: "-M1-arm64-", intel: "."

  version "1.6.0"
  sha256 arm:   "36fead22f6cef9ee618a93b3ee80c3066a61cf7bf9623ec6811d1600438e5146",
         intel: "841535562a2c80f29e5c85978a52f8f2bea2bab014aa8f6a4efed11b12f235f2"

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

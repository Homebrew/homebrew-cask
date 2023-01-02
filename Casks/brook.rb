cask "brook" do
  version "20230101"
  sha256 "9b9211122fb1f3deb563acec90685a827752115e82f3e1c42aef961969aea50d"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  name "Brook"
  desc "Proxy/VPN client"
  homepage "https://github.com/txthinking/brook"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+)["' >]}i)
    strategy :github_latest
  end

  app "Brook.app"
end

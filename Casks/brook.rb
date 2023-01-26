cask "brook" do
  version "20230122"
  sha256 "4f9d14b46868bdec9086d19abb1ff1aa0cba4fc2a5ef6c63796e81b3320b1e74"

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

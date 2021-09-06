cask "brook" do
  version "20210701"
  sha256 "731ba0b0923296cc904553d9e74049b0ff6af04cf4dd720db61f7339e7122f4f"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  name "Brook"
  desc "Proxy/VPN client"
  homepage "https://github.com/txthinking/brook"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/v?(\d+)/Brook\.dmg}i)
  end

  app "Brook.app"
end

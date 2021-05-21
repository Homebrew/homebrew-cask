cask "brook" do
  version "20210401"
  sha256 "15d851b72d81ebe06f8c74ed8abcb8cbb6f64d6026604612eff5c2bbf03e37aa"

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

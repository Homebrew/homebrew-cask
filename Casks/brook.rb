cask "brook" do
  version "20220515"
  sha256 "7821af1d2db0733a169124edb3ac29b14b97b826cf97f9e85582b01932de71f8"

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

cask "brook" do
  version "20220401"
  sha256 "077f27ae594131cbe6d28acb631feb1b5a58cc175157c1b1fe86597c38fe7748"

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

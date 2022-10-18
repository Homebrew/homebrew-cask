cask "brook" do
  version "20221010"
  sha256 "dd41c855ed5f7207177d47eaac2b895eabbe3fe8ad9920f129fba0bfe032ccc7"

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

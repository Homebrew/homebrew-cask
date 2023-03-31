cask "brook" do
  version "20230404"
  sha256 "72e61121e1c3195b0110f4826334bc08c9494bcd2a727c6414b1a04ca059c316"

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

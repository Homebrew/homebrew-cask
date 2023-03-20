cask "brook" do
  version "20230401"
  sha256 "ac4fabcf5d907907be6c051feb6245eadad361d5375aa6ed15fabd01477bc3f2"

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

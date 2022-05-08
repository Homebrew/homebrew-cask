cask "brook" do
  version "20220501"
  sha256 "d63e1622acdfff1253212d20eb512bd4619660bd4a00ae473fcec4f6ca63418d"

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

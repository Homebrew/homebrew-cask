cask "brook" do
  version "20220404"
  sha256 "8efb20bc66022b1bfa981bf2b30079b1d29a5409edeb5c0a234c0e66325ff15c"

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

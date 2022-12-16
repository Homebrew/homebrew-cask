cask "brook" do
  version "20221212"
  sha256 "3c60c957800b0f1bf7010300ab7fb10c1ab58e01f0c83a75fa557c7f9277c6eb"

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

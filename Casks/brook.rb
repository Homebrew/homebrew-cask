cask "brook" do
  version "20210214"
  sha256 "420c9158c0a2977eb8ba5432cac98e4ccbb22f3d37e49d70a05cbbe3c4907290"

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

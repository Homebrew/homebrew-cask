cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.1"
  sha256 arm:   "ab6f2baa756b7ade58b335ec98312ff8235bc3d6d520de9c7ec95bd9c8a13485",
         intel: "e5c1cf801dcd2f50cb0fec43feda03e74527fa4e28ee04890bfe3eb2ca0faaa1"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip",
      verified: "releases.hashicorp.com/consul/"
  name "Consul"
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io/"

  livecheck do
    url "https://releases.hashicorp.com/consul/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on :macos

  binary "consul"

  # No zap stanza required
end

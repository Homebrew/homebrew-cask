cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.6"
  sha256 arm:   "6a9b1e76ef814ee0abb9a414fcc83f15c3c7d60ac93d1516fe4e0b41a3613ee9",
         intel: "fc9c25898282f51e8e9b1a50f5f77bfbd0ae8556882fbf4338fa9f5f66b68a3c"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip",
      verified: "releases.hashicorp.com/consul/"
  name "Consul"
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io/"

  livecheck do
    url "https://releases.hashicorp.com/consul/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
  end

  binary "consul"

  # No zap stanza required
end

cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.21.0"
  sha256 arm:   "1f37d1e98131af0b6b3042c8e484473843704efa8815959e745ac50b81b905a9",
         intel: "f8094a72e983503e55b30fe805f2d47fa37f05dd201bfaa782ddf5a8adef7720"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip",
      verified: "releases.hashicorp.com/consul/"
  name "Consul"
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io/"

  livecheck do
    url "https://releases.hashicorp.com/consul/"
    regex(%r{href=.*?/consul/v?(\d+(?:\.\d+)+)/}i)
  end

  binary "consul"

  # No zap stanza required
end

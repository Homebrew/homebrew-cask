cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.1"
  sha256 arm:   "1bbbdc43ac23321f402d661b20dd0d291047ecbda2dbfe93e4b4ce26cf2c701d",
         intel: "1d8f48639618b8d293e3cfe7855df9fb53c802262848053bf45c260fd7427493"

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

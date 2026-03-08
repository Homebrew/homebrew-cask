cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.5"
  sha256 arm:   "a728b166849ce51d107c22073c89217d27510dd9adad3326454273ac80ac2aef",
         intel: "88028cf5c040a24193b2efd195efa6a6ca043c8340c7eb6b00343eecdf88ca40"

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

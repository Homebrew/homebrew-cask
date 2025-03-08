cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.20.4"
  sha256 arm:   "6eb464db4fb7593722706340a4815fc86ba797b999c4a98c6b78e29c1078f3cd",
         intel: "4130fe72c4e07c18fd426781145949743f6372a83299bf37d0a77b7680429352"

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

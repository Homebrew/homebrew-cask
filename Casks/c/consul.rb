cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.0"
  sha256 arm:   "6d9d58a2364d2ac23c816d6eb463ffcd10c568c547268fad310dc4299ac483e5",
         intel: "eb949ef495d53c1a08d9564105e742ed9eb93ef4f05abafaa4c479b3895bb4b8"

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

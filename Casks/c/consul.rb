cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.21.1"
  sha256 arm:   "67b32dc6902f37037d8fb6a17c48bc454b1724fc2318ea0b8336578d5bd63cf5",
         intel: "4f9b7b55f268d792c70f47843a2598664bf55765d81c6224d4f5441eb6d54c0c"

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

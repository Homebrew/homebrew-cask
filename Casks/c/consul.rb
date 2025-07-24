cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.21.3"
  sha256 arm:   "e9d94d3859f0d9a795992433e7c203b06bf0994c54dee7feaff1d1c46a75fd9f",
         intel: "124df50ef2bbeafc33dfe428f67aef26af3ef7f4aa509ff1c98a117a91dd0b59"

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

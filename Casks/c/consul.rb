cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.21.5"
  sha256 arm:   "36e141a33a3b34628ff02ec256528109a54712e9dacff3a3bd11d7e7d17d05f2",
         intel: "bcd684344eebf40aa7e2b42f5b858519b7ab87222646f7274035452ecce52f3b"

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

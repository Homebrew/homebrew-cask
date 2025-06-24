cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.21.2"
  sha256 arm:   "fea0f3f9bb096adcdcb1292da3e4d93996e1c0711be3b2261b6b877bd15b1037",
         intel: "917754ed822912f5fe7724055a79cccd16ad6d0553438c854fb18ccbe8bb9625"

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

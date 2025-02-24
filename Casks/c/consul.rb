cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.20.2"
  sha256 arm:   "4ed71a82faa8f0e3c9c15718dc712ae377013bcb550186f1c07088c8670370df",
         intel: "9614e8fe436231e76a20ad6a58a906c2697221a188725591aaf15fd1edd8c918"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip",
      verified: "releases.hashicorp.com/consul/"
  name "Consul"
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io/"

  livecheck do
    url "https://releases.hashicorp.com/consul/"
    regex(/href=.*?consul[._-]v?(\d+(?:\.\d+)+)/i)
  end

  binary "consul"

  # No zap stanza required
end

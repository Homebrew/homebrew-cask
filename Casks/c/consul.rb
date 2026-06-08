cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0"
  sha256 arm:   "846f2adcb2a931a5114ef240fb95e35ebdcf907191fa421d01fc47b38f0a40b2",
         intel: "d91f0f02e62b2697038ae399a78ba17a14a8657e7d8ac82d11dcf17b40b620ea"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip",
      verified: "releases.hashicorp.com/consul/"
  name "Consul"
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io/"

  livecheck do
    url "https://releases.hashicorp.com/consul/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on :macos

  binary "consul"

  # No zap stanza required
end

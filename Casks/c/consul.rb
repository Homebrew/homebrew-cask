cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.7"
  sha256 arm:   "6356b66f92f81d20e13129b09cdbacae7179952b7285e22f8ef8f8dffbf49758",
         intel: "4c768e809905e4ea1869a956e307d6311ebd592888f1dba2a2fbd72bcfe4f18e"

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

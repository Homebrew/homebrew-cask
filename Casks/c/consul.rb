cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.2"
  sha256 arm:   "5954509aec5ed54dabc88fc8e357756c7b0dc56437bd296c1399e525e3657417",
         intel: "4e76391b19d2e2db08cd2a910acadc6e67b9e1e9333a7434a7ea3c6c977a8889"

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

cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.4"
  sha256 arm:   "1f51416d27cf5404106e6b2d24de60d4a3677d1a99045e38986f0cc23cb78303",
         intel: "d8c1456641dd5cb9e453bfb054e44abd8152d4e13113cd6e2093cb99b4804845"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip"
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

cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0"
  sha256 arm:   "236d6a579c5fcfb065f416bd3a296ad199a1116c2667481bffdfdc60a5e61468",
         intel: "40e614b6bf47e85387c7a9f65b97e4f0a6f21057c4e50e1b05cbc4691b338d99"

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

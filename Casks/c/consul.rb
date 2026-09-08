cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.3"
  sha256 arm:   "fed05e8e2a296989c1a5c86e3b38d5f4dbdc7d83e0c0acf4c5fe7e302e8f4fde",
         intel: "9a8ced39610be73c4b6c918e64c1589a3fe9747f3a2188b8da55d0a35ddca4e0"

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

cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.21.4"
  sha256 arm:   "dae25622ac91a2643dfc57365951fb6ce88aab244998329316b2eb9b9c94bf30",
         intel: "3156e821b9d707fcb9dc85a26693e9c17b98e19585a3b0ed4df4e926abdee2ef"

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

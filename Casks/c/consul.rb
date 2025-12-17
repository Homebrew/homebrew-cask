cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.2"
  sha256 arm:   "c820f31ae10b6a0dea43806d2e2faa071f9ffe5a8adb6fec7d7fdd16b8b030af",
         intel: "87ad3967d78768516497b78d7297544b8cceca7cb4d1a8d676b9453e6bfcaf46"

  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_#{arch}.zip",
      verified: "releases.hashicorp.com/consul/"
  name "Consul"
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io/"

  livecheck do
    url "https://releases.hashicorp.com/consul/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
  end

  binary "consul"

  # No zap stanza required
end

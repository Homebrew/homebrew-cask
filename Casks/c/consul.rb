cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.3"
  sha256 arm:   "b2881e2f9c6704fdac53d54dfb3957bf0d280600541a8e8f61d807e96ea7efa0",
         intel: "e4663e1ac1b6171d7f9439121009c930068c2499cfba12e3fcb2e28fdac07b41"

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

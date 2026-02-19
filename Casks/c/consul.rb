cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.22.4"
  sha256 arm:   "b14c637e1e83b822942c9ce7922efbad8fb5fe0cea55022abe31bf64e2f56383",
         intel: "2443229fd5146361f8f95b8ab0901d0105d482128d848964c95fc441b2688d41"

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

cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.20.5"
  sha256 arm:   "1bac78ed8a2ea869e227f9503db4fa2b04f90e4b7e8f19a285475a338d8dd755",
         intel: "8eb12717124944f3177a4de8fae265d173c60c7219728fe9fa7dbbb3100f3567"

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

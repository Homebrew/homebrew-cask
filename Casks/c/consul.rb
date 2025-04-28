cask "consul" do
  arch arm: "arm64", intel: "amd64"

  version "1.20.6"
  sha256 arm:   "075759ed7005284037d8df2c35666bf0ca372be95fa93272abda09be50d43e5f",
         intel: "0e7e4a96773bb003aa055580f71ec58ba0b4bee0bb517dcb626b296d1cb6683a"

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

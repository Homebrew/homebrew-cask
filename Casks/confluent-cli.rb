cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.23.0"
  sha256 arm:   "68a6879b77f46fb3bd1c799d55e2a0ee01041ddedf500f62b41bfdd4c3fefacb",
         intel: "1afa6f593a3dfe47239796e42ff16c38ec3c4ed1074f27314bd19d1d0e7e5583"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_darwin_#{arch}.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud?prefix=confluent-cli/archives/&delimiter=/"
    regex(%r{<Prefix>confluent-cli/archives/(\d+(?:\.\d+)+)/</Prefix>}i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

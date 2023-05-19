cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.14.0"
  sha256 arm:   "cfab8e0cd326ed621bebe2d5569b12983c5ade6b308ff9ae72ff4855eb3feda2",
         intel: "2838b5feaf658b2f9b863a4be1e6daedbf0b997ef0730809f87c142c17093d15"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.10.0"
  sha256 arm:   "5626350040cffe7637a0cd4f5da24af784e2c794861cc1cded2aa22de66e9d59",
         intel: "eb182041c9e294f676a27a54ffc1d7d17a5a66f4ee1e74b8b5e85def041abf25"

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

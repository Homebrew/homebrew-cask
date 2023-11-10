cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.41.0"
  sha256 arm:   "8aa4c797cb9020f0cc6ebe2bba21b6e700d2b19a99d465cffc8551d7016173e3",
         intel: "53a88a3fa6907b4fef776c69d9a5ca287ec6b9d9616f282a825dfa1b83b61ad7"

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

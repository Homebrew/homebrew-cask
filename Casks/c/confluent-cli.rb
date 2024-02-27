cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.51.0"
  sha256 arm:   "de3c840b52f615613d1dac2f56df4242b468cce9b55c8e2475d7cde7d50fb876",
         intel: "4f1e8d253e456afc36ef6ee65485eaaf467964e5d2990c8373f7aad6086f5625"

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

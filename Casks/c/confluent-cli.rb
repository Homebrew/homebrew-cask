cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.4.0"
  sha256 arm:   "c00fc798d639aff8cb54ca6e47e15ca40b6b65d45c2feb01a9d437d813ccb1bf",
         intel: "5cdf3cbb0c2f2c315fafbc6640cc60f5ba532f1123efa759550d8d9eeb265870"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_darwin_#{arch}.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud?prefix=confluent-cli/archives/&delimiter=/"
    regex(%r{<Prefix>confluent[._-]cli/archives/v?(\d+(?:\.\d+)+)/</Prefix>}i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

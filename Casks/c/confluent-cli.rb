cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.8.0"
  sha256 arm:   "eee637341918983725af1c937ffc5999f38f48abdb2b136ee9e1a35f69fa2b1e",
         intel: "07fcbbfc9cf1f3dec2fa2f0b587352955d9c0ec09e8cf90d46578e50869607c8"

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

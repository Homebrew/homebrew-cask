cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.64.0"
  sha256 arm:   "dade164d45133e67d77d0ae7b247c8a0bb08b89b4324627b9a15b227d0564bdf",
         intel: "62a021f891b3dd6c0cf2c6034896a02022a7e6d9224ad193fd46e6972a067b95"

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

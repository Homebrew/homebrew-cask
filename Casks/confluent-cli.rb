cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.1"
  sha256 arm:   "ecf3699c9d68a7b2afde02eb313a531c02ac4904efc56f06e80bb4287ea78566",
         intel: "835f4e226d164da90cc9bc9f5fdda8fd3aec0e3ab50ccb59699a4a0eb4623de3"

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

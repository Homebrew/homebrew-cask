cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.53.0"
  sha256 arm:   "7d762bd9f9dfc3d1c9c19cc68cd8544d0c77c3f1798b43ad74a104111e0d4a34",
         intel: "b4cf779e67617fbfa9e89eb80e713d21eb68a74da18a7f987c2cff3cc71d405d"

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

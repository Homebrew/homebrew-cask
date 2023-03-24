cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.0"
  sha256 arm:   "78a1a5a604f3f3903a6d7e477948e0d0c3ed527d2aa9631136f589d06b21b89a",
         intel: "a3a0627a09763d7925c46e176502715bb5f431249f85aa006b16ce8321bb1409"

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

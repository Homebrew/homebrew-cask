cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.29.0"
  sha256 arm:   "d945140b09bfe056b82ed8f7982655ce37549c4bb0b785923c8781a871ed43b4",
         intel: "d8c9702e5f0e67b4ec3156f14995885c086d02eccee2a50ead2671bf7235f83b"

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

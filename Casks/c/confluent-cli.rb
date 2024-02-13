cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.49.0"
  sha256 arm:   "a741d98d446645ebf4a68a2a8655ba87f543d0ae4f784579085dcd05551c6b4d",
         intel: "ac01050a0087b7d8f82c797effc2fb2ec900a9c586580e3dbfe2fe46b6b5872b"

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

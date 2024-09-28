cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.5.0"
  sha256 arm:   "87672dfb71fe05630108efdccb1ce95d1a6f7d34a9ab82fa05d53bf247c18753",
         intel: "23f9f006923b46f9ad2538585e0d40f256e377383928e40590e7ef95fb0cd4a6"

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

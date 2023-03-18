cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.5.2"
  sha256 arm:   "ca1fc247779365b9e1c0950f3ad9fcb4f964bd4002435e1d56468c8ed6784a55",
         intel: "2824d1d2952e280ddb260fa5ff248ac096a5fb5d7f693800c1cefd53750fbd69"

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

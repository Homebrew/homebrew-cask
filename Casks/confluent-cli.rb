cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.24.0"
  sha256 arm:   "f72e95da40ae2554626e6de13d34c5f5253c39e73490d4cd4a668d65925dcf50",
         intel: "d42ae029afd8dc69f0d25c67f432eb31d4d0ceaba278665beb5849a4a68eb0e7"

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

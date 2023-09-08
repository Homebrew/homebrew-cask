cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.32.0"
  sha256 arm:   "0dd48b785347ece25165be2de08579b0bcb01dd83f51e357b9dd9ead88c20910",
         intel: "973ed129846475b716be52db4582f05dfb7aa8720cdb8e3d072fd8c67093aad9"

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

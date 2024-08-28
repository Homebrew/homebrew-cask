cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.2.0"
  sha256 arm:   "2ca66d63d780c51d61c3fdadbcab7a00261904ce1455a32c8074d93acfb1e83e",
         intel: "5e956b04d50a9c1344c66da93bc4823a24a133ac56e02738b1bfef9c18f921c0"

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

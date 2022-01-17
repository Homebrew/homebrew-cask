cask "confluent-cli" do
  version "2.3.1"
  sha256 "7fe81e0d007df112a6679178ac302a7c414b3f1417d69046b2e773dd7d669691"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_v#{version}_darwin_amd64.tar.gz",
      verified: "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/"
  name "confluent-cli"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    skip "No version information available"
  end

  binary "confluent/confluent"
end

cask "confluent-cli" do
  version "2.3.1"
  sha256 "7fe81e0d007df112a6679178ac302a7c414b3f1417d69046b2e773dd7d669691"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_v#{version}_darwin_amd64.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/latest/confluent_latest_darwin_amd64.tar.gz"
    strategy :header_match
    regex(/confluent[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]amd64\.tar\.gz/i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

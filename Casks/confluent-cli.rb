cask "confluent-cli" do
  version "2.8.1"
  sha256 "f9db2237b159a1f185f0625f5661fb7414c7acd854365102fa5b040b9c4b3ba7"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_v#{version}_darwin_amd64.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/latest/confluent_latest_darwin_amd64.tar.gz"
    regex(/confluent[._-]v?(\d+(?:\.\d+)+)(?:[_-].+?)?\.t/i)
    strategy :header_match
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

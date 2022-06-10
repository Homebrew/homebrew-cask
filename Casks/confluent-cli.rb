cask "confluent-cli" do
  version "2.16.0"
  sha256 "38681c9a862dedf6318d1557d04dac20ef76aa5aa61a7a905fa2e52bc38dbe3c"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_v#{version}_darwin_amd64.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://docs.confluent.io/confluent-cli/current/_static/documentation_options.js"
    regex(/VERSION:\s'(\d+(?:\.\d+)+)'/i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

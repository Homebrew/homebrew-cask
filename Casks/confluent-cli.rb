cask "confluent-cli" do
  version "2.34.0"
  sha256 "d2219510bd8305f55ce591fb13fc330fbfbec43ea48b63d21a1c9e62d6457ef0"

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

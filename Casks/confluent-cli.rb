cask "confluent-cli" do
  version "2.17.2"
  sha256 "acaee5c1b03fcf0f63901ce497f625e2e07ae99c00fd8e22d8ae2a6269df284f"

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

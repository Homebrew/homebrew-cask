cask "confluent-cli" do
  version "2.15.1"
  sha256 "47067258c18a5c49fb4ff01e3804cea84ff753b2c4b479bbb5360f87572d14f4"

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

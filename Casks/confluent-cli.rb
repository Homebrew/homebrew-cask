cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.0.0"
  sha256 arm:   "5274e870f521f8bbb42923e0dd98d4fef052d3b35c68b989dea0b155b81f5743",
         intel: "b66b45ae7e6b8785abf958cb4eb1d92579aed75fdad1a09cb94c195311c93cac"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_darwin_#{arch}.tar.gz",
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

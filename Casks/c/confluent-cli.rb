cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.39.1"
  sha256 arm:   "1edc55c379d10fbd6b9fbfe42a103ba2dfb3655943292016b991f9c778c1163e",
         intel: "f1da0ccaebbf7c048a84f41801c1a6afe8833d5689419f03482307d8a0cde773"

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

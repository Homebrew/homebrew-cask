cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.26.0"
  sha256 arm:   "0a3f10251107f3801e9d2911cd97c64d1b72be3a0a16dccf9b89e38f267da362",
         intel: "fd3544f16e41f8fadbf15194df1a00bb60960076e51ed37082d68be7f384f38f"

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

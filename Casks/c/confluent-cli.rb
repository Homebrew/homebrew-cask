cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.43.0"
  sha256 arm:   "919f655ea2ddedd59c2accb550f6dd3db9294631e51c70c2c31329b8db3eb7ad",
         intel: "8d279a89cac737afdd9b8142c3f91632b4e63adab80e96bd9ed88acdf90c6740"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.7.0"
  sha256 arm:   "ff25e4c553b47c27570e9ac673a695f7752a9c15a1471f796dd2e78cbfdb68e0",
         intel: "5e369c475f1c9e0acd3d822f6f544a8ceee2d80d11523ca55975f7335b47f66d"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_darwin_#{arch}.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud?prefix=confluent-cli/archives/&delimiter=/"
    regex(%r{<Prefix>confluent[._-]cli/archives/v?(\d+(?:\.\d+)+)/</Prefix>}i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

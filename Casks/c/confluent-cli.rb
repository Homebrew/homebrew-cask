cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.63.0"
  sha256 arm:   "add31f908f8fb9cbff3f6b77aa5e77489ff8ea1e27aa5aef013854a4a4134619",
         intel: "6f7d87e1a67ee21ec5e1db44235974cb9be76f4db74d7b379a0d9fc055374090"

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

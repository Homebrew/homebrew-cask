cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.7.0"
  sha256 arm:   "f9eb3f56f10f26fc988a57c6f54a57fcf5248b7cf0623c2e536ba61bf85de494",
         intel: "4ba70becbae294d9e36f831d583ce91baf571d054501ae92bfe54bbe09856e31"

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

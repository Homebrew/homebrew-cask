cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.54.0"
  sha256 arm:   "147c2cfd6367655163a208446a74343d57ce51bf5d489d0bd378e32bce15b3c6",
         intel: "ba8baadd8dd9932c7862f09c98e4589a107d80a14dd05e23a4cd9405e154360f"

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

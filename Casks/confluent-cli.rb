cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.8.0"
  sha256 arm:   "a25c132cffc0942a2031adb165ecd43f0ca34af7458f3d0bb56022fa7aa04b1c",
         intel: "412ebff606e9ef447ee2bce044ff67d82238595f53ca5289c99a04e17888497d"

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

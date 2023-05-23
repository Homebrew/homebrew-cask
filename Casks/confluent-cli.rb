cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.14.1"
  sha256 arm:   "3a6a331509211098a1625d98de558798f9c9956c407ac3dfb446827b9889b6b2",
         intel: "aee587a85f9dac4a2a4b53fd4f0e67bd7ec696bf522d3ca227ec5792c522195c"

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

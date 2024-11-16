cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.11.0"
  sha256 arm:   "b8db1b206d4936d8f65bfec79d5a041382665f0e04968fbb6cd93e23b5d1f415",
         intel: "b996b4a76c2ef8fe61f66abe2f34f9c1b3f60354ca7cbf1f3b892e77132988bc"

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

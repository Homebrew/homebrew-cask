cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.27.0"
  sha256 arm:   "9640a138f016efd09598e38f08b2e677c4c71685e4432a48bbc55c16c3391f2c",
         intel: "d60a4a7fefc3e3fe41f6223724b7b90b604f824f985f1aa3a84ed2d8a53cd53f"

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

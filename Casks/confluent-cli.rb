cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.1.0"
  sha256 arm:   "bbfc1b76da9c2723ecdcfacddc5ebe3aa3e43d119006b60a55bdf70f8539a293",
         intel: "868b3c223ad9fe4fd86d0139d9172ed64a29ef4a245435867d26e1d97d59456e"

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

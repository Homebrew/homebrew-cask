cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.56.0"
  sha256 arm:   "63bb9b7525fd7ba7315461a5176a06caae09586f91f20ddc92b7221c3a14a520",
         intel: "37426dd3b0c19c62199a6767a21d02e7e8a370d9adda532c7db2748dacc782f2"

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

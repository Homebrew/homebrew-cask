cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.18.0"
  sha256 arm:   "63c0404b6a0605e89453dee99449d668cad7a2c028bd7779c44f98cd365757c4",
         intel: "676a616a44ddc9e48321f4e5e0ad4af6c6c28612e0d7c5889f0a9361a4d044b7"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.22.0"
  sha256 arm:   "43435e896e3db7e0158c1bc43aa9a5708541cb48f678a4db2907ee1ce6461a57",
         intel: "8707c1468c6c22033ba4c008f6c5f3e07b4552fb9c82b3fe0ca33dd5529f6306"

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

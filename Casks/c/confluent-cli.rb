cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.64.1"
  sha256 arm:   "2918b8575a1871718d05b52b7babe2cb4c07060de236cf6f5a0f13bc99102baf",
         intel: "ec3f6269b4f696f90a1eaa94db6fe4fb98005b205e53e4f52b41fc888bfdb2c4"

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

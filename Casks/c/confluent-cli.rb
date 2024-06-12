cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.64.0"
  sha256 arm:   "b322cc508d6e2d96c2ec04f05d8302bb8d9efef7483f21f173abc499153be413",
         intel: "f5b39e909a74aecfd940446985aa46da8eb7ce51ba4d989ff4bf2c37ef16c225"

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

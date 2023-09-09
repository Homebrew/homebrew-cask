cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.32.1"
  sha256 arm:   "2362c936e51fad7ed46ba6f3a50a606ca2bd30349c6f1a81e9549113e39ad788",
         intel: "a5b0b8b1387e7ea86153275dccc5693604b9bc3f123eec70dcc94c37f65a255a"

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

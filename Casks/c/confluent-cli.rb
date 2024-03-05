cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.52.0"
  sha256 arm:   "1cc12406db0fe92667c2bc385c52c235fc9d04d42260c90cb21e409053a37078",
         intel: "7e4fbc2b1ee912f6c6f9ffee55ce7eea28ba0bb328a821cf337bc5853dc66336"

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

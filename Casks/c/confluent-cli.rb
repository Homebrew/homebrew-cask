cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.61.0"
  sha256 arm:   "12a61efb5e6fb8ba08b2d9175fb9d6acfacf2c8410ecbe016ac33357f24261d6",
         intel: "ed26652129f8237be162f53ddedbf911f8f77d75b78dea30177f72c51bcde8c7"

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

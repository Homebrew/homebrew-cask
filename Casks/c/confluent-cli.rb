cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.44.0"
  sha256 arm:   "a4ad1d5c2ed03d87856a43987066216de54b65f0c541dbc07ee779cdae387b67",
         intel: "fb41e62ef05f38a8f0dd2c3fc832bd1469176ba4c458d4b38c367c5268621977"

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

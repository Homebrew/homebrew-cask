cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.13.1"
  sha256 arm:   "6cbc611e36c5489eaeb6ecfe9cd49afeef436adaf95bf672cbeaf0f5ce9787fe",
         intel: "a4ef5c62bb818a8b5e4dfd81e84ef3afa73fc0f608417e00d5877e9d855ef403"

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

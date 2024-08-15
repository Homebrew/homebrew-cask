cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.0.0"
  sha256 arm:   "a82abe74c8fccced6817dfc57d593adb8ab6b0bb42c2b43684421afd2baf77c3",
         intel: "97a6ad6e0378a7ac866dc8198c58e46e7a7a31b5539652a8c6c7b41f23eaa214"

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

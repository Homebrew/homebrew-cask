cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.31.0"
  sha256 arm:   "aa912c48b5eacc7654be0f354fbf546932bfc3fe45becb51b0a5bc5d4fba759c",
         intel: "25defcee1d7c52bfd376d6f97a1493aeb8e750c4d8304acb9c94f49a084f6642"

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

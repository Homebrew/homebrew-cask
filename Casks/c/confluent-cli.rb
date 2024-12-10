cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.13.2"
  sha256 arm:   "fa6eca2821e8bd6507e24fc3da8db8f2a41c224dbf6c761fa7edc505c9c7193b",
         intel: "d67a7bfa87eb4bf502186b5c51dd6637767ddc720cf596ce9f327e5f1019061b"

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

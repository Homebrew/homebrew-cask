cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.59.0"
  sha256 arm:   "44607ef7f9eb9d4cb2bde9075f7233259fb7e63c6044a81f0bf6191966d7a8a0",
         intel: "db8b249a498d8314165f8c47ac67ecde7a1acdfd32194bb9f112a4ddf084d97c"

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

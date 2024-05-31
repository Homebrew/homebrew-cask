cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.62.0"
  sha256 arm:   "292ca573e375a414ca0fd1c9b7d53edc30100c5a3c8d082844dcf86fba505d4a",
         intel: "0f16d363b8b23ccb895f3187347af1bc7d7d0318d8c81a5d17a6fd792a3ef1ed"

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

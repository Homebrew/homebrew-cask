cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.30.0"
  sha256 arm:   "74f593887c485bb0ffced30dd95f5c9c30a46f21634f817d3a4fcb81e2def62b",
         intel: "9cfde6f779e107b4e832219aa82a5dd94ee2a196f046baa9b65f48b2a92e629c"

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

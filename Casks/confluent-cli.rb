cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.2.1"
  sha256 arm:   "b211bca7fe01d04760b8ce87f2d2ac8a725d6e1cd0e0fbdf8ccef348cf6dc573",
         intel: "10f4644871eb61ac7e47fdf7ca0f73af3abcf83769e13f88df02868f921f3baa"

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

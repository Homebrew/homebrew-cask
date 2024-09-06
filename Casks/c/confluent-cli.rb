cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "4.3.0"
  sha256 arm:   "f243b7c015976835ac4e9f1b1b7d7b1f3753fb4604485b52da85e8aca05e20f8",
         intel: "dc7c8c37ad07ebdc96458f15f49b8d20975bb04203b7eb91ec895404d8256117"

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

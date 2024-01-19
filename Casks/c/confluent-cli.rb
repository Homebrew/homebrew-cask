cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.48.0"
  sha256 arm:   "9f84be06b8f42dac04e3cba6d2a7ce8f6fa2fcc972c4d68ae32329a3fa321188",
         intel: "065b294840fdf349e200dca42ebebfd82eab48d17141aa42da0da330a6d382e0"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.40.0"
  sha256 arm:   "6e33fa4ae2ac3b7184f0bbcc645bc8e9b8c08d5ca7ffe42e46e788dd18bb8f23",
         intel: "2db5f90f9da3102e7fac8083b49f0c10e08e084cc4709a338f9198a79b218ec6"

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

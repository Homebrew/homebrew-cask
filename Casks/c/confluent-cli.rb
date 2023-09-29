cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.36.0"
  sha256 arm:   "6a7cd875547d226f1f4a5a4af08dbfba157248b46cb4956f1806addd4f5bcfe9",
         intel: "bb5034aca2761bf614f3e712442e1035d59d2e1c6723b4d65b6cfa9755d82770"

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

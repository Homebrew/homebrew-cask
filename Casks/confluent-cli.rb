cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.5.0"
  sha256 arm:   "7103ba7b96fcfed48b1507ebefc137716d59132c89a41dbead73572d88244e62",
         intel: "0911ede0a55958e54adb124abdd521c93bdfda8914e08fa1d78627fbb7317f39"

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

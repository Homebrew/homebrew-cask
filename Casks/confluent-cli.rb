cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.0"
  sha256 arm:   "ffdafbc15709c6f5179412db5f1f1cfe16d447dd22f31c10dbf3178a2ad12dae",
         intel: "f54d963c74a17bef32f1269a37aa1c84852c3ef5e362f38b54bfcac6be570552"

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

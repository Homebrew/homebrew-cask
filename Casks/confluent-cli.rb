cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.0"
  sha256 arm:   "85a63f016e053090870eb65ab3eef5fd98f520db85aaab289493e39749ccfc9d",
         intel: "7f5a48bdc6628ba83e004b8d4a2a130a9966806890f4bc89a4d6c9eb45cbbfe3"

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

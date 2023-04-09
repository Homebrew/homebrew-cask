cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.0"
  sha256 arm:   "634190edb841d6bb3c60d5d560410e5af0aea77ec66ff02b9d60ca68b9ed8934",
         intel: "e8a1454c799463fcef5cc790a14b78a3264f283dda0cce70b83674f04df4cdfb"

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

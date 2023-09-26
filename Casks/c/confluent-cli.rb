cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.35.0"
  sha256 arm:   "2422d06e96bb7d50cdafb88f255097d3a19b3c7a3ffdb95b33de35dafca99eaa",
         intel: "21045fc36f17b9ab97c8a463a870f97a84b88339254d58b9a5f82aded17535cd"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.55.0"
  sha256 arm:   "9c033d3c10d3c1578235a06c55ab72f01557ce8c55a7d20c7997688f3343c7e6",
         intel: "2cbaa9843af71fc1587f593633b71fd95cd42443af843b9ad4668c10bf9dc59d"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.19.0"
  sha256 arm:   "c3c05e2de2e1fac3ba823d8a404e6bb94f9d58b7f591aea00b4fc11d0f931643",
         intel: "2e12fa886fde9599c9abfc3c459f32a42ed0941be8ceb2e6c741f6fa44ea7cc0"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.25.1"
  sha256 arm:   "0a2ad601023fc484a3bac6c0d2fe83f7b7882afa41ed9dc020675e46f061512c",
         intel: "84f5fb1cb6b6ea60acb3943762a49040e790249de191be64bf9ffd2df561f23c"

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

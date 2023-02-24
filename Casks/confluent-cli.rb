cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.3.0"
  sha256 arm:   "5f0d85f32aceb36e770bf44287f9856ff0deffc35538561c9a55dc8b3b141edf",
         intel: "d94819e71e35a7ab15c691f15f7ee62715d672d6ab1f0dd20ce1f9b57a7cc3d8"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.0"
  sha256 arm:   "836df805c9b6e376290ee8635b94afad4e04e280b7ebd468ed3ea1fa2b5e5d3d",
         intel: "f922bc0544c66ca8137681ac1f8aa4250622809bc55e4451307ca4807c11a1ee"

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

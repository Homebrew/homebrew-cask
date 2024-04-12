cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.57.0"
  sha256 arm:   "31ed8d0a7d8140b2e2f47d7f4370beb19db011865779563e2480dca0edc2c903",
         intel: "7e345e0a90b1ee0fe9e6424ee38d631ea145a3f312dd6c357974413aaa0732be"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_darwin_#{arch}.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud?prefix=confluent-cli/archives/&delimiter=/"
    regex(%r{<Prefix>confluent[._-]cli/archives/v?(\d+(?:\.\d+)+)/</Prefix>}i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

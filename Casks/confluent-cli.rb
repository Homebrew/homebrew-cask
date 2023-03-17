cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.5.1"
  sha256 arm:   "954ac41d3001d58f70a16353806b1fd5456d49163783d7b8162293095c4bd3d1",
         intel: "04d8de7f908b9fbd0991e44914f1e0e872eec3b4d0dba720ee41f626f0e55040"

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

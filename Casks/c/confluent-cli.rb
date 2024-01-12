cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.47.0"
  sha256 arm:   "ee7564f668edb19488d8c0c005a98d8db73bfed7f92e665b117e584f2b11cf01",
         intel: "29cb0cfa6df9f4b1ab330a8ae75bb3931e7b3575f8d0cf867c5a5375e9fba4f1"

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

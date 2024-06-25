cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.64.3"
  sha256 arm:   "b9f08abe8f2658f3b74466aa6db26ae4906ab664239c0dbb3983575aba19a5e8",
         intel: "fba9267181df4277876b7e17d494f2d8ce713041cf43292a2cc7c83ee4f8f11b"

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

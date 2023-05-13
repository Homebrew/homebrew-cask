cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"

  version "3.13.0"
  sha256 arm:   "18feec00b9da8604b8bb6f5e7ad14c84b0713d0ce9cab79c4d0985eeebdf6365",
         intel: "e0e3377b2297060bfe6cf918cd926ff0e240d4115bd314bd9ac53c0f5c47ebcd"

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

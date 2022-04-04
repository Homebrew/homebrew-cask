cask "confluent-cli" do
  version "2.9.0"
  sha256 "04ec22ff55d689400f73e39f3183acd65e8b191d8205e16bbaabb35400823fcb"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_v#{version}_darwin_amd64.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/latest/confluent_latest_darwin_amd64.tar.gz"
    regex(/confluent[._-]v?(\d+(?:\.\d+)+)(?:[_-].+?)?\.t/i)
    strategy :header_match
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

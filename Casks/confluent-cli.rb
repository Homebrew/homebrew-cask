cask "confluent-cli" do
  version "2.4.0"
  sha256 "ed89aaa5a9bb35e35648ea472f0d729055fb30ec7f3d768a44f30ccbd23d6ef6"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_v#{version}_darwin_amd64.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/latest/confluent_latest_darwin_amd64.tar.gz"
    strategy :header_match
    regex(/confluent[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]amd64\.tar\.gz/i)
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

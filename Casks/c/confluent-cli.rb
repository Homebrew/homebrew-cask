cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.65.0"
  sha256 arm:          "c4d26c28b980bbed61560b5e5ade4759410187937c7cc4a249bf1dc8ed2afdfe",
         intel:        "6b7de50c4e32f7351967498fc6b65a339470fc9b6a984af3202858dd049b6232",
         arm64_linux:  "1d5ddab33161b910f98c547589d549a9cbc0a932cb202bbcf1d1a8b831300183",
         x86_64_linux: "e18f476b7b3c5dace1523b8116cfb7083b6a9922ec36b376c5b1a6244b30597a"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_#{os}_#{arch}.tar.gz",
      verified: "s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/"
  name "Confluent CLI"
  desc "Enables developers to manage Confluent Cloud or Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/confluent.cloud?prefix=confluent-cli/archives/&delimiter=/"
    regex(%r{confluent[._-]cli/archives/v?(\d+(?:\.\d+)+)/}i)
    strategy :xml do |xml, regex|
      xml.get_elements("//Prefix").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  binary "confluent/confluent"

  zap trash: "~/.confluent"
end

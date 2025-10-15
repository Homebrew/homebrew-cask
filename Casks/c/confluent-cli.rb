cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.40.0"
  sha256 arm:          "3fa110bd93089b1c159c1ece77d661351ed09f457674a0c2070e7be4cfde2db0",
         intel:        "1e0f9a732f4b8b575a177806b31b0f405b679a97a265b55d794fea8d7e93b846",
         arm64_linux:  "103f9dbcf4a6c4d4df39c4934a215c67a78f81b043f55ce7222f3152bbcae2ae",
         x86_64_linux: "448a9bf878b1ed2213afe45bb427561ce16cddb7d26c6795b34bdab14f2709aa"

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

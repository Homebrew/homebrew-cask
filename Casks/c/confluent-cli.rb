cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.45.1"
  sha256 arm:          "44dcbc3faf0244400cf525cb283ac6bb1044f491294f3c5e650e9dff3e489eeb",
         intel:        "57af21c058eee9b7f42b67093121ca3c0c77298bbab4b58664f19631ea97937d",
         arm64_linux:  "062dea906985f3e752500a96f4d5d2d38ff70912675eb08c05666173754cb1af",
         x86_64_linux: "3c76c00fefb5150607831bc1b0624776d97715930b65e024a273b05b80511b69"

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

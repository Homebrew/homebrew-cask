cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.28.0"
  sha256 arm:          "48263841514a01fa87367cf63e3ee513891d347f34c875fa5d1ea53d5f8ac2ac",
         intel:        "e2546140908ac8a35e2ea08fae8d1b992504f5cd2208c05b4753d1ed23e19a21",
         arm64_linux:  "fe14d4e1ebfb8f9a5a1913291573d2437b1ef15189d17b12585f443b85775c5e",
         x86_64_linux: "5197a710fae2a2d0b1f87409a1c245477ae6ead416bd695d894c33492f7fec6f"

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

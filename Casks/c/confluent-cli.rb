cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.82.0"
  sha256 arm:          "092cd5034a8f16262732c504a7577c5aec4396ad527b2e7232f72049b1c419e4",
         intel:        "daa2444a55b141832e3a3411648dd4a1ef09bcd42bf5d434f315338c3098d8c1",
         arm64_linux:  "67b00764b01ce949514fafafe51e0cbdf38a12e9592b11cbc2d3013c0d1f9b55",
         x86_64_linux: "2dcd5a4684e0aa2c8b96f6886cf454b7900d26e6df9d9f5dbfcd552428d418e2"

  url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/#{version}/confluent_#{version}_#{os}_#{arch}.tar.gz"
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

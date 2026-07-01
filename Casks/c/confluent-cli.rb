cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.69.0"
  sha256 arm:          "bb00335ee3e1fc6c57b1c89e45627e615f285fe19381d7ac7ddc52ca668b70bc",
         intel:        "33672bcb2400bf6531e168a480749c5d1379b03aa5004e8e7347d043cca672ed",
         arm64_linux:  "5e6c6e175abdac97ac51b3489465ec953b824782ba734e6ccfb8f8e4613fba18",
         x86_64_linux: "6010eeb9a8f967780af4f1efe5d388f1deae12a2ff172f28d8535e08351ac016"

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

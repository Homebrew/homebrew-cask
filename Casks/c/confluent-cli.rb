cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.46.0"
  sha256 arm:          "0945b6c45343b6c508dd4b2e1f4002f54d727144291efa38976867af0658dc76",
         intel:        "7bc1d4981488f6d4b33683c33191436cbe080bc1fe4bb3d51452262bf9742db2",
         arm64_linux:  "2e2c44c9055e3cf47e8ef4d3a871a57b61d909f5ede86e504723fc347e07a9fe",
         x86_64_linux: "dde14695eedb01f4b0aacbb8293bc6fe3c8e045df5be4c166e4a948538d98bee"

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

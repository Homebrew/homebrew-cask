cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.52.0"
  sha256 arm:          "f5c663295efc729d0b3eab3b2e613ae654bcea8934f7c2f351952f0d88e22bc1",
         intel:        "0df1153557a330726bb003b1c4ae4659341ef9454b9dd73dfa939db6d67ec95b",
         arm64_linux:  "6eafbbc6b358d60af32428593a2fec9a28ede574b97cc0ca69f2f3bf292db678",
         x86_64_linux: "e0d7aab50d7da4af582484d0930d046c89ab8d02e2bba1e89a796306c2492b0a"

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

cask "confluent-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.76.0"
  sha256 arm:          "be837141eb1dddcb27800dce05d73b3729df2c87c086dc79bdab13694d4c5037",
         intel:        "86095b9c1c3b81b2af65d2f656e4af5f70fddac7166affbce29e2f0db3e30349",
         arm64_linux:  "20db7d7cd2973af1b2ec22ad5256703dda0977619ae6bd2a3a6b5e4c639e5a6f",
         x86_64_linux: "740c0913581582bab91027e8cb866afd6b6451db932cdca16e1424aab3cf693a"

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
